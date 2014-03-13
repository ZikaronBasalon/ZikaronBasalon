class HostsController < ApplicationController
  before_filter :basic_auth, only: [:index]

  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(params[:host])
    if @host.save
      redirect_to success_host_path(@host), :notice => "Successfully created host."
    else
      render :action => 'new'
    end
  end

  def show

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
    #searchable = Region.find_by_name(params[:q])
    #searchable ||= City.find_by_name(params[:q])
    city = City.find(params[:id])
    @hosts = city.hosts
  end

  def success
  end

  def send_request
    @guest = Guest.find_or_create_by_email(params[:guest])
    session[:guest_id] = @guest.id

    session[:invites_sent] ||= Array.new
    session[:invites_sent].push(params[:guest][:host_id])

    @host = Host.find(params[:guest][:host_id])
    RequestMailer.send_request(@host,@guest).deliver
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username,password|
      username == "zikaron" && password == "1234.com"
    end
  end
end
