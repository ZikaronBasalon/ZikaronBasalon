class PagesController < ApplicationController
  include PagesHelper
  include CitiesHelper
  include ApplicationHelper

  respond_to :html, :json


#TODO add here where users are active this year
  def home

    # get region id
    region_id = params[:region_id] ? params[:region_id] : ""

    # get country_id
    country_id = params[:country_id] ? params[:country_id] : ""

    @cities = City.normalized
    if !country_id.present? && !region_id.present?
      @cities = @cities.normalized
    else
      @cities = filter_cities(@cities, country_id, region_id)
      @cities = @cities.sort_alphabetical_by{ |c| c[:name] }
    end
    # get city ids
    city_ids = nil
    if region_id.present?
      city_ids = @cities.map {|c| c[:id] }
    end

  	@hosts = Host.includes(:city, :user, :country, :invites).where(host_conditions_hash)
    @hosts = @hosts.where(city_id: city_ids) if city_ids != nil

    # additional filtering
    @hosts = @hosts.where('invites_confirmed_count + invites_pending_count < max_guests')
    if query.present?
      @hosts = @hosts.joins(:user, :city)
      @hosts = filter_by_query(@hosts, query)
    end
    @hosts = filter_by_language(@hosts, 'event_language', params[:event_language])

  	@hosts = @hosts.paginate(:page => params[:page] || 1, :per_page => 10)
    @total_items = @hosts.count

    @hosts = sort_by_field(@hosts, params[:sort] || 'user.full_name')
    if params[:reverse_ordering].to_i == 0
      @hosts = @hosts.reverse
    end
    @countries = Country.all

    @regions = []
    if country_id.present?
      @regions = Region.where(country_id: country_id)
    end
    @regions = @regions.sort_alphabetical_by{ |r| r[:name] }


  	respond_to do |format|
      format.html
		  format.json { render json: {
			  	hosts: @hosts.to_json(
			  		:include => [{ :user => { :methods => [:first_name] } }, :city, :country],
			  		:methods => [:available_places, :converted_time]
		  		),
			  	cities: @cities,
          regions: @regions,
			  	total_items: @total_items,
			  	page: params[:page] || 1
			  }
		  }
	  end
  end

  def host_register_link
    @host = Host.find(params[:id])
  end

  def welcome

  end

  def missing_terms_agreement
    user = User.find_by(email: terms_params[:email].downcase) if terms_params[:email].present?
    if user.present? && user.valid_password?(terms_params[:password])
      if user.agreed_to_terms_at.present? && user.subscribed_to_marketing
        sign_in user
        render json: { user: user, redirectLink: "/#{I18n.locale}/#{user.meta_type.downcase}s/#{user.meta_id}" }, status: :ok
      else
        render json: { user: { agreed_to_terms_at: user.agreed_to_terms_at, subscribed_to_marketing: user.subscribed_to_marketing } }, status: :ok
      end
      return
    end
    render plain: '', status: :not_found
  end

private
  def terms_params
    params.require(:page).require(:user).permit(:email, :password)
  end

	def host_conditions_hash
		h = { }
    h[:strangers] = true
    h[:active] = true
		h[:city_id] = params[:city_ids] if !params[:city_ids].blank?
    h[:max_guests] = 1..9999
    h[:received_registration_mail] = true
    h[:country_id] = params[:country_id] if !params[:country_id].blank?
    h[:event_date] = Date.parse(params[:event_date]) if !params[:event_date].blank?
    h
	end

	def query
		params[:query]
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
