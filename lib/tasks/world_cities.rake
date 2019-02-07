namespace :world_cities_tasks do
  desc "load cities data"
  task :load_cities_data => :environment do
    csv_data = File.read('world_cities.csv')
    csv = CSV.parse(csv_data, headers: true)
    total = csv.size
    current = 0
    csv.each do |row|
      current += 1
      print "\rInserting (#{current}/#{total})"
      row_data = row.to_a.map(&:second).map{|a| a.strip if a.present?}
      city, city_ascii, lat, lng, country, iso2, iso3, admin_name, capital, population, id = row_data
      WorldCity.find_or_create_by(internal_id: id) do |world_city|
        world_city.city_name = city
        world_city.city_ascii_name = city_ascii
        world_city.lat = lat
        world_city.lng = lng
        world_city.country_name = country
        world_city.state = admin_name
        internal_id = id
      end
    end
  end

  desc "2nd stage work"
  task :second_stage => :environment do
    # first try to give each existing country a world city id
    Country.all.each do |country|
      WorldCity.where(city_ascii_name: country.printable_name, country_id: nil).each do |world_city|
        world_city.update_columns(country_id: country.id)
      end
    end

    # update world cities for existing countries
    WorldCity.where(country_id: nil).each do |world_city|
      country = Country.where(printable_name: world_city.country_name).first
      world_city.update_columns(country_id: country.id) if country.present?
    end

    # create countries from countries of world cities
    WorldCity.pluck(:country_name).uniq.each do |country_name|
      c = Country.find_or_create_by(printable_name: country_name) do |country|
        country.printable_nam = country_name
        country.name = country_name.upcase
      end
      # update the world city with the country
      WorldCity.where(country_name: country_name).update_all(country_id: c.id)
    end

    # now connect world cities to cities
    WorldCity.all.each do |world_city|
      c = City.find_or_create_by(name: world_city.city_ascii_name) do |city|
        city.name = world_city.city_ascii_name
        city.name_en = world_city.city_ascii_name
        city.name_he = world_city.city_ascii_name
        city.country_id = world_city.country_id
      end
    end
  end
end
