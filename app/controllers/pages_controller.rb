class PagesController < ApplicationController
  include PagesHelper
  respond_to :html, :json

  def home
  	@hosts = Host.includes(:city, :user, :country, :invites).where(host_conditions_hash)
  	@hosts = @hosts.select { |h| 
      h.available_places > 0 &&
      host_in_query(h, query) &&
      h.in_language_filter(params[:event_language]) &&
      host_in_vetrans(h, params[:vetrans])
  	}

    @hosts = sort_by_field(@hosts, params[:sort] || 'user.full_name')
    if params[:reverse_ordering].to_i == 0
      @hosts = @hosts.reverse
    end
    @cities = City.all.sort_alphabetical_by{ |c| c[:name] }
    @countries = Country.all

  	@hosts = paginate(@hosts, params[:page] || 1)
  	@total_items = @hosts.total_count

  	respond_to do |format|
      format.html
		  format.json { render json: { 
			  	hosts: @hosts.to_json(
			  		:include => [{ :user => { :methods => [:first_name] } }, :city, :country], 
			  		:methods => [:available_places, :converted_time]
		  		), 
			  	cities: @cities, 
			  	total_items: @hosts.total_count,
			  	page: params[:page] || 1
			  } 
		  }
	  end
  end

  def welcome
    redirect_to my_profile_path if current_user.present? and current_user.has_active_meta
  end

private
	def host_conditions_hash
		h = { }
		h[:strangers] = true
		h[:city_id] = params[:city_ids] if params[:city_ids].present?
    h[:max_guests] = 1..9999
    h[:received_registration_mail] = true
    h[:country_id] = params[:country_id] if params[:country_id].present?
    h[:event_date] = Date.parse(params[:event_date]) + 1.day if params[:event_date].present?
    h[:year] = ENV['CURRENT_YEAR']
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

  def host_in_query(h, query)
    return true if !query.present?
    
    (h.user && h.user.full_name.include?(query)) ||
    (h.city && h.city.name.include?(query)) ||
    (h.country && h.country.printable_name && h.country.printable_name.include?(query)) ||
    (h.address && h.address.include?(query))
  end

  def host_in_language_filter(h, language)
    return true if language.blank?

    if language != 'other'
      return h.event_language == language
    else
      return !['english', 'hebrew', 'arabic', 'frech', 'russian', 'spanish'].include?(h.event_language)
    end
  end

  def host_in_vetrans(h, vetrans) 
    return true if !vetrans
    h.has_witness && h.witness.try(:is_vetran)
  end

  def sort_by_field(hosts, field)
    case field
      when 'user.full_name'
        return hosts.sort_alphabetical_by{ |h| h.try(:user).try(:full_name) }
      when 'city'
        return hosts.sort_by! { |h| h.city.try(:name).to_s }
      when 'address'
        return hosts.sort_by! { |h| h.try(:address).to_s }
      when 'event_date'
        return hosts.sort_by! { |h| h.try(:event_date).to_s }
      when 'event_language'
        return hosts.sort_by! { |h| h.try(:event_language).to_s }
      when 'available_places'
        return hosts.sort_by! { |h| h.try(:available_places).to_s }
      else
        return hosts
    end
  end
end
