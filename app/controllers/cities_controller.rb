class CitiesController < ApplicationController
  respond_to :json

  def show
    if params[:id] == 'autocomplete_city'
      sub_params = JSON.parse(params.first.second)
      q = sub_params['q']
      country_id = sub_params['country_id']
      manager_meta = current_user&.meta_id
      results = City.normalized.normalized_search(q, country_id)
      # todo: DRY
      if manager_meta.present?
        if current_user.simple_admin?
          communities = CommunityLeadership.where(manager_id: current_user.meta.id)
          community_city_ids = communities.map(&:city_id)
          if communities.size > 0
            results = results.where(id: community_city_ids)
          end
        end
      end
      results.first(12)
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
