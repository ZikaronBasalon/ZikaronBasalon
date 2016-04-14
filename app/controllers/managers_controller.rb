class ManagersController < ApplicationController
  before_filter :set_manager, only: [:show, :edit, :update, :destroy, :remove_city, :filter_hosts]
  before_filter :is_admin, only: [:index]
  before_filter :correct_manager, only: [:show]

  respond_to :html, :json

  def index
    @managers = Manager.includes(:cities, :user).all 
    @cities_without_manager = City.without_managers
    respond_with(@managers)
  end

  def show
    @page = params[:page] || 1

    @hosts = @manager.get_hosts(@page, 
                                host_filter, 
                                params[:host_query], 
                                params[:host_sort], 
                                has_manager,
                                has_survivor,
                                is_org,
                                language)
    @cities = @manager.get_cities
    @witnesses = @manager.get_witnesses(@page, 
                                        witness_filter, 
                                        params[:witness_query], 
                                        params[:witness_sort], 
                                        has_manager,
                                        has_host,
                                        language)

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
          page: @page
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
end
