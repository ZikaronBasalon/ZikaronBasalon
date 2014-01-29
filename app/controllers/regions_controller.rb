class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
    @guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
  end

  def new
  	@region = Region.new
  end

  def create
  	Region.create(params[:region])
  end
end
