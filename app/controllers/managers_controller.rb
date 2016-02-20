class ManagersController < ApplicationController
  before_filter :set_manager, only: [:show, :edit, :update, :destroy]
  before_filter :is_admin, only: [:index]
  before_filter :correct_manager, only: [:show]

  respond_to :html, :json

  def index
    @managers = Manager.includes(:cities, :user).all 
    respond_with(@managers)
  end

  def show
    respond_with(@manager)
  end

  def new
    @manager = Manager.new
    respond_with(@manager)
  end

  def edit
  end

  def create
    #@manager = Manager.new(params[:manager])
    @manager = Manager.find_or_create_by_temp_email(params[:manager][:temp_email])
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
    respond_with(@manager)
  end

  private
    def set_manager
      @manager = Manager.find(params[:id])
    end

    def correct_manager
      meta = current_user.meta
      id = params[:id].to_i

      return if current_user.admin?
      
      redirect_to root_path if (meta.is_a?(Manager) && meta.id != id) || !meta.is_a?(Manager)
    end
end
