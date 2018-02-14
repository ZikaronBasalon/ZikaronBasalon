class RegionsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @regions = Region.all
    @cities = City.all
  end

  def show
    @region = Region.find(params[:id])
    @guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
    @cities = City.where(region_id: params[:id])
  end

  def new
  	@region = Region.new
  end

  def create
    @region = Region.new(params[:region])
    @is_created=true
    if @region.valid?
      @region.save
    else
      @is_created=false
    end

  end

  def add_city
    @is_valid = true
    if params[:city][:id] != nil && params[:city][:id] != ""
      city = City.where(id: params[:city][:id]).last
      city.region_id= params[:id]
      city.save!
    else
      @is_valid = false
    end
  end

  def remove_city
    City.destroy(params[:city_id])
  end

end
