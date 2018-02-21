module CitiesHelper

  def filter_cities(cities, country_id, region_id)
    if region_id.present?
      cities = cities.where(region_id: region_id)
    elsif country_id.present?
      region_ids = Region.where(country_id: country_id).pluck(:id)
      cities = cities.where(region_id: region_ids)
    end
    return cities
  end

end
