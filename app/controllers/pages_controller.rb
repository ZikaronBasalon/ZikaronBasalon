class PagesController < ApplicationController
  include PagesHelper
  def home
  	@hosts = Host.includes(:city, :user).where(host_conditions_hash)
    @hosts = @hosts.select{ |h| h.available_places > 0 }
  	@hosts = @hosts.select { |h| 
  		h.user.full_name.include?(query) ||
  		(h.city && h.city.name.include?(query)) ||
      (h.country && h.country.printable_name.include?(query)) ||
  		h.address.include?(query)
  	} if query.present?

    @cities = @hosts.map{ |h| h.city }.compact.uniq.sort_alphabetical_by{ |c| c[:name] }
    @countries = Country.all

  	@hosts = paginate(@hosts, params[:page] || 1)
  	@total_items = @hosts.total_count

  	respond_to do |format|
		  format.json { render json: { 
			  	hosts: @hosts.to_json(
			  		:include => [:user, :city, :country], 
			  		:methods => [:available_places]
		  		), 
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
		h[:event_language] = params[:event_language] if !params[:event_language].blank?
    h[:max_guests] = 1..9999
    h[:received_registration_mail] = true
    h[:country_id] = params[:country_id] if !params[:country_id].blank?
    h
	end

	def query
		params[:query]
	end

	def paginate(arr_name, page)
    unless arr_name.kind_of?(Array)
      arr_name = arr_name.page(page).per(10)
    else
      arr_name = Kaminari.paginate_array(arr_name).page(page).per(10)
    end
    arr_name
  end
end
