class CitiesController < ApplicationController
  respond_to :json

  def show
    q = JSON.parse(params.first.second)['q']
    country_id = JSON.parse(params.first.second)['country_id']

    # results = City.where(country_id: country_id).where("name ILIKE '%#{q}%' OR name_he ILIKE '%#{q}%' OR name_en ILIKE '%#{q}%'")
    results = City.normalized.where("name ILIKE '%#{q}%' OR name_he ILIKE '%#{q}%' OR name_en ILIKE '%#{q}%'")
    # byebug
    render json: results
  end

  def safe_params
    params.require(:city).permit(:country_id, :q)
  end
end
