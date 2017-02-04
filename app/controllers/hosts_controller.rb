class HostsController < ApplicationController
  before_filter :correct_host, only: [:edit]
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
    meta = current_user.try(:meta)
    id = params[:id].to_i

    return if current_user && (current_user.admin? || current_user.sub_admin?)

    
    redirect_to user_session_path if meta.nil? || (meta.is_a?(Host) && meta.id != id)
    redirect_to user_session_path if meta.is_a?(Manager) && !meta.hosts.pluck(:id).include?(id)
  end

  def changerole
    user = User.find(params[:id])
    oppisite_role = user.meta_type == "Host" ? "Guest" : "Host"
    was_ever_oppisite_role = user.previous_meta_id.present?
    if params[:changerole] == true
      if !was_ever_oppisite_role #never was oppisite role, so create new
        oppisite_role_instance = oppisite_role.constantize.create! #the guest or host
        if oppisite_role == "Host"
          oppisite_role_instance.active = true
          oppisite_role_instance.save!
        elsif oppisite_role == "Guest"
          oppisite_role_instance.phone = user.host.phone
          oppisite_role_instance.save!
        end
        #TODO: add to comments table this change
        user.previous_meta_id = user.meta_id
        user.previous_meta_type = user.meta_type
        user.meta = oppisite_role_instance
      else
        user.meta_type,user.previous_meta_type = user.previous_meta_type,user.meta_type #swap meta_type values using Parallel Assignment
        user.previous_meta_id,user.meta_id = user.meta_id,user.previous_meta_id #swap id values using Parallel Assignment
        if user.meta_type == "Host" #if just became host
          user.meta.active = true
          user.meta.save!
        elsif user.meta_type == "Guest"
          user.meta.phone = Host.find(user.previous_meta_id).phone
          user.meta.save!
        end
      end
    end
    user.active_this_year = true
    user.save!
    render json: user, status: 201
  end
end
