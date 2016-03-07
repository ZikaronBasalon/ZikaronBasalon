class PagesController < ApplicationController
  include PagesHelper
  def home
  	@hosts = Host.page(params[:page] || 1).per(10).where(host_conditions_hash)
  	@total_items = @hosts.total_count
  	@cities = City.all

  	respond_to do |format|
		  format.json { render json: { 
			  	hosts: @hosts, 
			  	cities: @cities, 
			  	total_items: @hosts.total_count,
			  	page: params[:page] || 1
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
