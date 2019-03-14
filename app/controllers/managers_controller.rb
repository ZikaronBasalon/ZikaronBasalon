class ManagersController < ApplicationController
  before_filter :set_manager, only: [:show, :edit, :update, :destroy, :remove_city, :filter_hosts, :export_hosts, :export_witnesses, :export_guests]
  before_filter :is_admin, only: [:index, :export_hosts, :export_witnesses, :export_guests]
  before_filter :correct_manager, only: [:show, :export]
  respond_to :html, :json

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
  end

  def edit
  end

  def create
    body = OpenStruct.new(params[:manager])
    email = body.temp_email.downcase
    @manager = Manager.find_by_temp_email(email) || Manager.create(temp_email: email)
    user = User.find_by(email: body.email) || User.new
    if user.new_record?
      user.full_name = body.name
      user.email = email
      user.password = body.password
      user.password_confirmation = body.password_confirmation
      user.locale = I18n.locale
    end
    user.meta_type = 'Manager'
    user.meta_id = @manager.id
    if user.save
      render json: @manager.to_json( :include => [:cities, :user] ), status: :ok
    else
      render json: { errors: user.errors.messages }, status: :unprocessable_entity
    end
  end

  def update
    @manager.update_attributes(params[:manager])
    respond_with(@manager)
  end

  def destroy
    @manager.destroy
    render :json => @manager.to_json
  end

  def add_city
    @manager = Manager.find(params[:id])
    community_leadership = CommunityLeadership.where(manager_id: @manager.id, city_id: params[:city_id]).first || CommunityLeadership.create(manager_id: @manager.id, city_id: params[:city_id])
    if community_leadership.valid?
      render :json => @manager.to_json( :include => [:cities, :user] )
    else
      render json: { errors: community_leadership.errors.messages }, status: :unprocessable_entity
    end
  end

  def remove_city
    @city = City.find(params[:city_id])
    CommunityLeadership.find_by_manager_id_and_city_id(@manager.id, @city.id).destroy
    render :json => @manager.to_json( :include => [:cities, :user] )
  end

  def find_movil
    email = params[:email]
    render json: Manager.where("temp_email ILIKE '%#{email}%'")
  end

  def load_movil
    movil_id = params[:id]
    @manager = Manager.find_by_id(movil_id)
    if @manager.present?
      render json: @manager.to_json( :include => [:cities, :user] ), status: :ok
    else
      render json: { not_found: true }, status: :unprocessable_entity
    end
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
      params[:filter].try(:[], :host).presence || {}
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
