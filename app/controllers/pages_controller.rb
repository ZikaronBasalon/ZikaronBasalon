class PagesController < ApplicationController
  def home
  end

  def search
  	searchable = Region.find_by_name(params[:q])
  	searchable ||= City.find_by_name(params[:q])
  	redirect_to searchable
  end
end
