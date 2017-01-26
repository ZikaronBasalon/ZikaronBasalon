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

    if params[:change_to_guest].present?
      user = @host.user
      #todo:
      #if previous_meta & previous meta_id so switch, else create guest and copy to it and set meta and return guest
    elsif params[:finalStep] && !@host.received_registration_mail
      HostMailer.new_host(@host.user.id, I18n.locale).deliver
      @host.update_attributes(received_registration_mail: true)
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
end
