class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])

    @guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
  end
end
