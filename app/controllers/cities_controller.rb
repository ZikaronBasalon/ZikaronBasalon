class CitiesController < ApplicationController
  respond_to :json

  def show
    q = JSON.parse(params.first.second)['q']
    in_israel = JSON.parse(params.first.second)['in_israel']

    results = []

    if in_israel
      results = City.normalized.where("name ILIKE '%#{q}%' OR name_he ILIKE '%#{q}%'")
    else
      results = City.normalized.where("name ILIKE '%#{q}%' OR name_en ILIKE '%#{q}%'")
    end
    render json: results
  end

  def safe_params
    params.require(:city).permit(:in_israel, :q)
  end
end
