class ManagersController < ApplicationController
  before_filter :set_manager, only: [:show, :edit, :update, :destroy, :remove_city, :filter_hosts, :export_hosts, :export_witnesses, :export_guests]
  before_filter :is_admin, only: [:index, :export_hosts, :export_witnesses, :export_guests]
  before_filter :correct_manager, only: [:show, :export]
  # before_action :authenticate_user!
  respond_to :html, :json

  def index
    @managers = Manager.includes(:cities, :user).all
    @cities_without_manager = City.without_managers
    respond_with(@managers)
  end

  def show
    @page = params[:page] || 1

    # get region id and remove from query (it's bugging things up otherwise in get_hosts with the querying)
    region_id = ""
    if params[:filter] and params[:filter][:host][:region_id]
      region_id = params[:filter][:host][:region_id]
      params[:filter][:host].delete :region_id
    end

    # get country_id
    country_id = params[:filter] ? params[:filter][:host][:country_id] : 0

    # get lists
    @cities = @manager.get_cities(country_id, region_id)
    @countries = @manager.get_countries
    @regions = @manager.get_regions(country_id)

    # get hosts and witnesses
    @hosts = @manager.get_hosts(@page,
                                host_filter,
                                params[:host_query],
                                params[:host_sort],
                                has_manager,
                                has_survivor,
                                is_org,
                                language,
                                in_future,
                                has_invites,
                                reverse_ordering, @cities, country_id, region_id)

    @witnesses = @manager.get_witnesses(@page,
                                        witness_filter,
                                        params[:witness_query],
                                        params[:witness_sort],
                                        has_manager,
                                        has_host,
                                        language)
    # totals
    @total_hosts = @hosts.total_count
    @total_witnesses = @witnesses.total_count

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
    @hosts = @manager.get_hosts(nil,
                                host_filter,
                                params[:host_query],
                                params[:host_sort],
                                has_manager,
                                has_survivor,
                                is_org,
                                language,
                                in_future,
                                has_invites,
                                reverse_ordering)

    send_data Host.to_csv(@hosts), :disposition => "attachment; filename=hosts.csv"
  end

  def export_witnesses
    @witnesses = @manager.get_witnesses(nil,
                                        witness_filter,
                                        params[:witness_query],
                                        params[:witness_sort],
                                        has_manager,
                                        has_host,
                                        language,
                                        external_assignment,
                                        archived,
                                        need_to_followup)
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

    def correct_manager
      return redirect_to user_session_path if current_user.nil?

      meta = current_user.meta
      id = params[:id].to_i

      return if current_user.admin? || current_user.sub_admin?

      redirect_to root_path if (meta.is_a?(Manager) && meta.id != id) || !meta.is_a?(Manager)
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
