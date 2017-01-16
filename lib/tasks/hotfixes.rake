namespace :hotfixes do
  desc "fix dashes in numbers"
  task :remove_dashes_in_phone_numbers => :environment do
    Witness.all.each do |w|
      w.normalize_phone
      w.save!
    end
  end
  desc "fix names for cities and add place_id"
  task :add_place_ids_to_cities => :environment do
    # bundle exec rake hotfixes:add_place_ids_to_cities
    # City.where("name IS NULL OR name LIKE '%@%'").all
      # byebug
      # City.select("id, name").where(placeid: nil).all.to_json
      # City.update(163, name: "בית זייד")
    @client = GooglePlaces::Client.new('AIzaSyDJ1u3XlTGQDKn6dR3vOH5bVswXBmaGiLM')
    City.where(placeid: nil).each do |c|
      location = @client.spots_by_query(c.name, :types => [ "locality", "political"], :exclude => ['establishment', 'address', 'country'], :language => 'iw')
      # puts location.to_json
      if location.blank?
        location = @client.spots_by_query(c.name, :language => 'iw')
      end
      unless location.blank?
        c.name_he = location[0].name
        c.placeid = location[0].place_id
        puts c.name + ":" + c.name_he + ":" + c.placeid
        location = @client.spot(c.placeid, :language => 'en')
        c.name_en = location.name
        c.save!
        puts c.name_en + "    " + c.name_he
      end
    end
  end
  desc "reconnect city ids"
  task :clean_duplicate_cities => :environment do
    City.where(name: nil).destroy_all
    City.where("name LIKE '%@%'").destroy_all
    a=City.where("placeid IS NOT NULL").all.group_by(&:placeid)
    b = a.select{|k,v| v.size>1}
    b.values.each do |cities|
      good_city_id=cities.first.id
      cities[1..-1].each do |city|
        city.witnesses.update_all(city_id: good_city_id)
        city.community_leaderships.update_all(city_id: good_city_id)
        city.hosts.update_all(city_id: good_city_id)
        City.find(city.id).destroy
      end
    end
  end
end