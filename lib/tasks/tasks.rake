namespace :tasks do
  # download the csv from here https://data.gov.il/dataset/citiesandsettelments/resource/d4901968-dad3-4845-a9b0-a57d027f11ab?inner_span=True and remove first line (may need to convert to utf8)
  desc "load cities data"
  task :load_cities_data => :environment do
    csv_data = File.read('yishuvim_data.csv')
    csv = CSV.parse(csv_data, headers: true)
    csv.each do |row|
      row_data = row.to_a.map(&:second).map{|a| a.strip if a.present?}
      _, city_identifier, city_name_he, city_name_en, israel_region_identifier, napa_name, _, lishka_name, _, _ = row_data
      IsraelCity.find_or_create_by(city_identifier: city_identifier) do |israel_city|
        israel_city.city_identifier = city_identifier
        israel_city.city_name_he = city_name_he
        israel_city.city_name_en = city_name_en.try(:humanize)
        israel_city.israel_region_id = israel_region_identifier
      end
      IsraelRegion.find_or_create_by(identifier: israel_region_identifier) do |israel_region|
        israel_region.identifier = israel_region_identifier
        israel_region.napa_name = napa_name
        israel_region.lishka_name = lishka_name
      end
    end
  end
end
