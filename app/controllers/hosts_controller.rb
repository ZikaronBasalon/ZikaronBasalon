class HostsController < ApplicationController
  before_filter :correct_host, only: [:edit]
  # before_action :authenticate_user!

  respond_to :html, :json

  def index
    @hosts = Host.includes(:user).order('created_at DESC').all
  end

  def new
    redirect_to signup_path(type: 'host')
  end

  def show
    @host = Host.find(params[:id])
    respond_to do |format|
      format.html { correct_host }
      format.json {
        if @host.available_places > 0
          render :json => {
           host: @host.to_json(:include => [
                { :user => { :methods => [:first_name] } },
                :city,
                :country
              ], :methods => [:available_places]) }

        else
          render :json => { success: false }
        end
      }
    end
  end

  def destroy
    @host = Host.find(params[:id])
    @host.destroy
    render :json => { success: true, host: @host }
  end

  def edit
    @host = Host.find(params[:id])
    @countries = Country.all
  end

  def update
    @host = Host.find(params[:id])
    if params[:deactivate].present?
      @host.active=false
      @host.received_registration_mail=false
      @host.save!
      @host.user.active_this_year=false
      @host.user.save!
     #put here code for changing to guest from host
    elsif params[:finalStep]
      if !@host.received_registration_mail
        HostMailer.new_host(@host.user.id, I18n.locale).deliver
        @host.update_attributes(received_registration_mail: true)
      end
      @host.update_attributes(params[:host])
      @host.active=true
      @host.save!
      @host.user.active_this_year=true
      @host.user.save!
    elsif params[:host].present?
      @host.update_attributes(params[:host])
    end
    respond_with(@host)
  end

  # Checks if user has access to view page
  def correct_host
    return false if current_user.nil?
    meta = current_user.try(:meta)
    id = params[:id].to_i

    return if current_user && (current_user.admin? || current_user.sub_admin?)


    redirect_to user_session_path if meta.nil? || (meta.is_a?(Host) && meta.id != id)
    redirect_to user_session_path if meta.is_a?(Manager) && !meta.hosts.pluck(:id).include?(id)

    #lookup user type. if same type, false. different type redirect
    user_type = current_user.meta_type
    if user_type == "Host"
      redirect_to root_path unless current_user.meta.id == id
    else
      return false unless current_user.meta.id == id
    end
    # param_user_type = User.find(id).meta_type
    # user_type = current_user.meta_type
    # if param_user_type == user_type
    # else
    # end
  end

  def changerole
    updated_user = Roles.new(params[:id]).change_role

    render json: updated_user, status: 201
  end
end
