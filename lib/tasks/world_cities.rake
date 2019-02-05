namespace :world_cities_tasks do
  desc "load cities data"
  task :load_cities_data => :environment do
    csv_data = File.read('world_cities.csv')
    csv = CSV.parse(csv_data, headers: true)
    csv.each do |row|
      row_data = row.to_a.map(&:second).map{|a| a.strip if a.present?}
      city, city_ascii, lat, lng, country, iso2, iso3, admin_name, capital, population, id = row_data
      WorldCity.find_or_create_by(internal_id: id) do |world_city|
        world_city.city_name = city
        world_city.city_ascii_name = city_ascii
        world_city.lat = lat
        world_city.lng = lng
        world_city.country = country
        world_city.state = admin_name
        internal_id = id
      end
    end
  end
end