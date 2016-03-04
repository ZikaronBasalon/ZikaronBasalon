class PagesController < ApplicationController
  include PagesHelper
  def home
  	@page = params[:page] || 1
  	@hosts = Host.page(@page).per(2).where(host_conditions_hash)
  	@total_pages = @hosts.total_pages
  	@cities = City.all

  	respond_to do |format|
		  format.json { render json: { 
			  	hosts: @hosts, 
			  	cities: @cities, 
			  	total_pages: @total_pages,
			  	page: @page
			  } 
		  }
		  format.html
	  end
  end

private
	def host_conditions_hash
		h = { }
		h[:strangers] = true
		h[:city_id] = params[:city_id] if !params[:city_id].blank?
    h[:max_guests] = 1..9999
    h
	end
end
