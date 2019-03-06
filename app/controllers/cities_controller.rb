class CitiesController < ApplicationController
  respond_to :json

  def show
    if params[:id] == 'autocomplete_city'
      sub_params = JSON.parse(params.first.second)
      q = sub_params['q']
      country_id = sub_params['country_id']
      manager_meta = current_user&.meta_id
      results = City.normalized.normalized_search(q, country_id)
      results.first(12)
      if q.present?
        city_name = City.not_on_the_list_names.detect { |name| name.upcase.include?(q.upcase) }
        not_on_the_list_city = City.find_by(name: city_name) if city_name
        results.unshift(not_on_the_list_city) if not_on_the_list_city
      end
    elsif params[:id] == 'autocomplete_country'
      q = params[:q]
      results = Country.normalized_search(q).first(12)
    end
    render json: results
  end

  def safe_params
    params.require(:city).permit(:country_id, :q)
  end
end
