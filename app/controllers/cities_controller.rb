class CitiesController < ApplicationController
  respond_to :json

  def show
    if params[:id] == 'autocomplete_city'
      q = JSON.parse(params.first.second)['q']
      country_id = JSON.parse(params.first.second)['country_id']
      results = City.normalized_search(q, country_id).first(12)
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
