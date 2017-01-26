namespace :hotfixes do
  desc "fix dashes in numbers"
  task :remove_dashes_in_phone_numbers => :environment do
    Witness.all.each do |w|
      w.normalize_phone
      w.save!
    end
  end

  #instructions: 
  desc "fix names for cities and add place_id"
  task :add_place_ids_to_cities => :environment do
    City.where(name: nil).destroy_all
    City.where("name LIKE '%@%'").destroy_all

    cities_name_delete = ["קוצושטינאו", "קוצושטיאנו", "כל הארץ"]
    cities_name_delete.each do |cityname|
      city = City.find_by_name(cityname)
      city.destroy unless city.nil?
    end

    cities_name_fix = [["עמונה","Amonah"], ["גושר", "גשר"], ["עין חר", "עין חרוד"], ["כפר תפ", "כפר תפוח"], ["שדה ורב", "שדה ורבורג"]]
    cities_name_fix.each do |oldname, newname|
      city = City.find_by_name(oldname)
      city.update_column(:name, newname) unless city.nil?
    end
    # bundle exec rake hotfixes:add_place_ids_to_cities
    @client = GooglePlaces::Client.new('AIzaSyDJ1u3XlTGQDKn6dR3vOH5bVswXBmaGiLM')
    City.where(placeid: nil).each do |c|
      puts "\ncurrent id is '#{c.id}'"
      location = @client.spots_by_query(c.name, :types => [ "locality", "political"], :exclude => ['establishment', 'address', 'country'], :language => 'iw')
      puts location.to_json
      if location.blank?
        puts "couldn't find for #{c.name}, trying again"
        location = @client.spots_by_query(c.name, :language => 'iw')
        if location.blank?
          puts "couldn't find for #{c.name}"
          puts "add a rule in the task above"
        end

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
  desc "reset users active_this_year"
  task :send_users_to_last_year => :environment do
    User.where(admin: false).update_all(active_this_year:false)
    Host.update_all(active:false)
    Witness.each do |witness|
      witness.comments.create(user_id: admin_user, content: "System: was assigned host #{witness.host_id}")
      witness.host_id = nil
    end
    Host.each do |host|
      host.comments.create!(
        user_id: admin_user, 
        content: "was host previous year, had witness #{host.witness_id} assigned"
        )
      host.invites.destroy_all
    end
    Guest.each do |guest|
      guest.invites.destroy_all
    end
  end
end