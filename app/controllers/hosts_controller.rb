class HostsController < ApplicationController
  before_filter :basic_auth, only: [:index,:edit]

  def index
    @hosts = Host.all.sort_by {|x| x.city || City.first}
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(params[:host])
    if @host.save
      manager_email = @host.try(:city).manager_email
      if manager_email
        HostMailer.manager_notification(manager_email,@host).deliver
      end
      if @host.email
         HostMailer.new_host(@host).deliver
      end
      redirect_to success_host_path(@host), :notice => "Successfully created host."

    else
      render :action => 'new'
    end
  end

  def show
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
    redirect_to action: 'index'
  end

  def search
    city = City.find(params[:id])
    @hosts = city.get_hosts
    @guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
    @invites = @guest.invites.map(&:host_id)
  end

  def success
  end

  def send_request
    @guest = Guest.find_or_create_by_email(params[:guest])
    @guest.update_attributes(params[:guest])
    session[:guest_id] = @guest.id
    @guest.invites.create(host_id: params[:guest][:host_id] )
    @host = Host.find(params[:guest][:host_id])
    RequestMailer.send_request(@host,@guest).deliver
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username,password|
      if username == "zikaron" && password == "1234.com"
        session[:auth] = "basic"
        return true
      elsif username == "zbadmin" && password == "bbznot"
        session[:auth] = "extended"
        return true
      end
      return false
    end
  end
end
