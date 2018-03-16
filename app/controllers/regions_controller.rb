class RegionsController < ApplicationController

  before_filter :is_admin
  before_filter :correct_manager

  # before_action :authenticate_user!
  def index
    @country_region_dict = {}
    Country.order('regions_count DESC').where('regions_count > 0').each{|country|
      @country_region_dict[country.name] = []
      Region.where(country_id:country.id).each{|region|
        @country_region_dict[country.name].push(region)
      }
    }
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
    if params[:city].present? && params[:city][:id].present?
      params[:city][:id].each {|city_id|
        if city_id.present?
          city = City.where(id: city_id).last
          city.region_id = params[:id]
          city.save!
        end
      }

    else
      @is_valid = false
    end
  end

  def remove_city
    City.destroy(params[:city_id])
  end

end
