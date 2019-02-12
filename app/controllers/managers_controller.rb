class ManagersController < ApplicationController
  before_filter :set_manager, only: [:show, :edit, :update, :destroy, :remove_city, :filter_hosts, :export_hosts, :export_witnesses, :export_guests]
  before_filter :is_admin, only: [:index, :export_hosts, :export_witnesses, :export_guests]
  before_filter :correct_manager, only: [:show, :export]
  # before_action :authenticate_user!
  respond_to :html, :json

  def index
    @managers = Manager.includes(:cities, :user).paginate(:page => @page || 1, :per_page => 10)
    @cities_without_manager = City.without_managers.paginate(:page => @page || 1, :per_page => 10)
    respond_with(@managers)
  end

  def get_country_id_and_region_id
    region_id = 37
    if params[:filter].present? && params[:filter][:host].present? && params[:filter][:host][:region_id].present?
      region_id = params[:filter][:host][:region_id]
      params[:filter][:host].delete :region_id
    end

    # get country_id
    country_id = params[:filter].present? && params[:filter][:host].present? ? params[:filter][:host][:country_id] : "97"

    return country_id, region_id
  end

  def show
    @page = params[:page] || 1

    # get region id and remove from query (it's bugging things up otherwise in get_hosts with the querying)
    country_id, region_id = get_country_id_and_region_id

    # get lists

    @cities = @manager.get_cities(current_user, country_id, region_id)
    @countries = @manager.get_countries
    @regions = @manager.get_regions(country_id)

    # get hosts and witnesses
    @hosts, @total_hosts = @manager.get_hosts(current_user, true, @page,
                                host_filter,
                                params[:host_query],
                                params[:host_sort],
                                has_manager,
                                has_survivor,
                                is_red,
                                is_org,
                                language,
                                in_future,
                                has_invites,
                                reverse_ordering, @cities, country_id, region_id)

    @witnesses, @total_witnesses = @manager.get_witnesses(true, @page,
                                        witness_filter,
                                        params[:witness_query],
                                        params[:witness_sort],
                                        has_manager,
                                        has_host,
                                        language)


    respond_to do |format|
      format.html
      format.json {
        render :json => {
          hosts:  @hosts.to_json(:include => [:user, :witness, { city: { :include => :managers } }], :methods => [:has_witness]),
          witnesses: @witnesses.to_json(:include => { city: { :include => :managers } }),
          total_hosts: @total_hosts,
          total_witnesses: @total_witnesses,
          page: @page,
          regions: @regions.to_json,
          cities: @cities.to_json
        }
      }
    end
  end

  def new
    @manager = Manager.new
    respond_with(@manager)
    respond_with(@manager)
  end

  def edit
  end

  # Creates a temp Manager and assigns him with a City
  def create
    @manager = Manager.where('lower(temp_email) = ?', params[:manager][:temp_email].downcase).first
    @manager ||= Manager.create(:temp_email => params[:manager][:temp_email])
    if @manager.new_record?
      @manager.save!
      ManagerMailer.new_manager(@manager.temp_email).deliver
    end
    city = City.find_or_create_by_name(params[:manager][:city_name])
    CommunityLeadership.find_or_create_by_manager_id_and_city_id(manager_id: @manager.id, city_id: city.id)
    render :json => @manager.to_json( :include => [:cities, :user] )
  end

  def update
    @manager.update_attributes(params[:manager])
    respond_with(@manager)
  end

  def destroy
    @manager.destroy
    render :json => @manager.to_json
  end

  def remove_city
    @city = City.find(params[:city_id])
    CommunityLeadership.find_by_manager_id_and_city_id(@manager.id, @city.id).destroy
    render :json => @manager.to_json( :include => [:cities, :user] )
  end

  def export_hosts
    country_id, region_id = get_country_id_and_region_id
    @cities = @manager.get_cities(current_user, country_id, region_id)
    @hosts, host_count = @manager.get_hosts(current_user, false, nil,
                                host_filter,
                                params[:host_query],
                                params[:host_sort],
                                has_manager,
                                has_survivor,
                                is_red,
                                is_org,
                                language,
                                in_future,
                                has_invites,
                                reverse_ordering, @cities, country_id, region_id)

    send_data Host.to_csv(@hosts), :disposition => "attachment; filename=hosts.csv"
  end

  def export_witnesses
    # def get_witnesses(page, filter, query, sort, has_manager, has_host, language)
    @witnesses, @witnesses_count = @manager.get_witnesses(false, nil,
                                        witness_filter,
                                        params[:witness_query],
                                        params[:witness_sort],
                                        has_manager,
                                        has_host,
                                        language)
    send_data Witness.to_csv(@witnesses), :disposition => "attachment; filename=witnesses.csv"
  end

  def export_guests
    @guests = Guest.includes(:user, :invites).all

    send_data Guest.to_csv(@guests), :disposition => "attachment; filename=guests.csv"
  end

  private
    def set_manager
      @manager = Manager.find(params[:id])
    end

    def host_filter
      params[:filter].try(:[], :host)
    end

    def witness_filter
      params[:filter].try(:[], :witness)
    end

    def has_manager
      params[:has_manager]
    end

    def has_host
      params[:has_host]
    end

    def has_survivor
      params[:has_survivor]
    end

    def is_red
      params[:is_red]
    end

    def is_org
      params[:is_org]
    end

    def language
      params[:event_language]
    end

    def in_future
      params[:in_future]
    end

    def has_invites
      params[:has_invites]
    end

    def reverse_ordering
      params[:reverse_ordering]
    end

    def has_survivor_set
      params[:has_survivor_set]
    end

    def external_assignment
      params[:external_assignment]
    end

    def archived
      params[:archived]
    end

    def need_to_followup
      params[:need_to_followup]
    end
end
