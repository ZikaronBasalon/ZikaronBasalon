class HostsController < ApplicationController
  before_filter :correct_host, only: [:edit, :show]
  respond_to :html, :json

  def index
    @hosts = Host.includes(:user).order('created_at DESC').all
  end

  def new
    @host = Host.new
  end

  def show
    @host = Host.find(params[:id])
  end

  def destroy
    @host = Host.find(params[:id])
    @host.destroy
    redirect_to hosts_path
  end

  def edit
    @host = Host.find(params[:id])
  end

  def update
    @host = Host.find(params[:id])
    @host.update_attributes(params[:host])
    respond_with(@host)
  end

  def search
    #city = City.find(params[:id])
    @hosts = Host.page(params[:page]).per(10).where("strangers = ?",true)#city.get_hosts
    @guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
    @invites = @guest.invites.map(&:host_id)
  end

  def success
  end

  def send_request
    @guest = Guest.find_or_create_by_email(params[:guest])
    @guest.update_attributes(params[:guest])
    session[:guest_id] = @guest.id
    @invite = @guest.invites.create(host_id: params[:guest][:host_id] )
    @host = Host.find(params[:guest][:host_id])
    RequestMailer.delay.send_request(@host.id,@guest.id, @invite.id)
    RequestMailer.delay.request_was_sent(@host.id,@guest.id)
  end

  # Checks if user has access to view page
  def correct_host
    meta = current_user.try(:meta)
    id = params[:id].to_i

    return if current_user && current_user.admin?

    
    redirect_to root_path if meta.nil? || (meta.is_a?(Host) && meta.id != id)
    redirect_to root_path if meta.is_a?(Manager) && !meta.hosts.pluck(:id).include?(id)
  end
end
