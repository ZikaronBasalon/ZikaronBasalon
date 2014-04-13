class CitiesController < ApplicationController
  before_filter :basic_auth, only: [:index,:edit]

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    @city.update_attributes(params[:city])
    redirect_to action: 'index'
  end

  def destroy
  	@city = City.find(params[:id])
    @city.destroy
    redirect_to cities_path
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
