class RegionsController < ApplicationController
  before_action :authenticate_user!
  def index
    @regions = Region.all
    @cities = Cities.all
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
