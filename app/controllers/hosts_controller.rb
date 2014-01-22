class HostsController < ApplicationController
  def index
    @search = Host.search(params[:q])
    @hosts = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
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

  def search
    index
    render :index
  end

  def success
  end

  def send_request
    @guest = Guest.find_or_create_by_email(params[:guest])
    session[:guest_id] = @guest.id
    @host = Host.find(params[:id])
    RequestMailer.send_request(@host,@guest).deliver
    respond_to do |format|
        format.js 
      end
  end
end
