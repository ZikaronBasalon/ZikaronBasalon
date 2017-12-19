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

    cities_name_fix = [["Tel Aviv-yafo", "תל אביב יפו"], ["Haifa", "חיפה"], ["ראשלצ", "ראשון לציון"], ["נהרייה", "נהריה"], ["גבעים", "גבעתיים"], ["עמונה","Amonah"], ["גושר", "גשר"], ["עין חר", "עין חרוד"], ["כפר תפ", "כפר תפוח"], ["שדה ורב", "שדה ורבורג"] ]
    cities_name_fix.each do |oldname, newname|
      city = City.find_by_name(oldname)
      city.update_column(:name, newname) unless city.nil?
    end
    # bundle exec rake hotfixes:add_place_ids_to_cities
    @client = GooglePlaces::Client.new('AIzaSyDSOmyr4VMv2qvWLO12OuYqH7o-67DRANk')
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

    #cancel all assignments
    Host.where("assignment_time IS NOT NULL").update_all(assignment_time: nil)

    #all guests and hosts inactive this year (except for managers)
    #this makes change role popup
    User.where(meta_type: "Guest").update_all(active_this_year:false)
    User.where(meta_type: "Host").update_all(active_this_year:false)

    #make all hosts not active (for coming up in searches)
    # Host.where(active: true).each do |host|
    admin_user_id = User.where(email: "zikaronbasalon@gmail.com").first.id
    Host.all.each do |host|
      Host.transaction do
        #create comment for host
        # host.comments.create
        # comment = "בשנה שעברה, מארח זה אירח ב '#{host.event_date} #{host.event_time}' עם העד #{host.witness_id}"
        # where("name like '%yson%'")
        # host.comments.where("content LIKE 'בשנה שעברה%'").destroy_all
        # h=host.comments.where('content LIKE ?',  "בשנה שעברה%").last
        # host.comments.where('content LIKE ?',  "בשנה שעברה%").each do |comment|

        #   comment.destroy if !comment.nil?
        # end
        if !host.witness.nil?
          comment = "ב2016 המארח/ת אירח/ה את איש/אשת העדות #{host.witness.full_name} #{host.witness.id}"
          host.comments.create!(user_id: admin_user_id, content: comment)
        end
        host.max_guests = nil
        host.strangers = nil
        host.contacted = false
        host.survivor_details = nil
        host.evening_public = nil
        host.hosted_before = nil
        host.event_date = nil
        host.event_time = nil
        host.org_name = nil
        host.survivor_needed = nil
        host.witness_id = nil
        host.received_registration_mail = nil
        host.contacted_witness = false
        host.assignment_time = nil
        host.preparation_evening = nil
        host.active = false
        host.save!
      end
    end

    admin_user_id = User.where(email: "zikaronbasalon@gmail.com").first.id
    Witness.where("host_id IS NOT NULL").each do |witness|
      Witness.transaction do
        # witness.comments.where("content LIKE 'בשנה שעברה%'").destroy_all

                  #בשנה שעברה, 'זליג-בונדר'             (1772)           היה/הייתה מצוות/ת למארח/ת 'לירון נמרי'                       (1518              ). בצד של המארחים הוא/היא 2185.
        comment = "בשנה שעברה, '#{witness.full_name}' (#{witness.id}) היה/הייתה מצוות/ת למארח/ת #{witness.host.user.full_name} (#{witness.host_id}). בצד של המארחים הוא/היא #{witness.host.user.id}."
                  #בשנה שעברה, 'זליג-בונדר'             (1772)           היה/הייתה מצוות/ת למארח/ת 'לירון נמרי'                       (1518).               בצד של המארחים הוא/היא 2185.
        # comment = "בשנה שעברה, העד בשם '#{witness.full_name}' עם מספר סידורי #{witness.id} הייתה משוייכת למארח '#{witness.host.user.full_name}' עם מספר סידורי #{witness.host_id}. במערכת של המארח הוא #{witness.host.user.id}"
        witness.comments.create!(user_id: admin_user_id, content: comment)
        witness.host.comments.create!(user_id: admin_user_id, content: comment)
        witness.host_id = nil
        witness.contacted_by_host = false
        witness.available_for_teaming = nil
        witness.can_morning = nil
        witness.can_afternoon = nil
        witness.can_evening = nil
        witness.free_on_day = nil
        # witness.has_host = nil #is reset by setting host_id to nil
        witness.external_assignment = true #mark all as not interested, until we follow up
        witness.available_day1 = nil
        witness.available_day2 = nil
        witness.available_day3 = nil
        witness.available_day4 = nil
        witness.available_day5 = nil
        witness.available_day6 = nil
        # witness.concept = nil
        witness.save!
      end
    end
    
    #remove all invites
    Invite.destroy_all
  end

  #this resets all witnesses for the new year, even those with no host (and thus no comments)
  desc "reset all witnesses"
  task :reset_witnesses => :environment do
    Witness.all.each do |witness|
      Witness.transaction do
        witness.host_id = nil
        witness.contacted_by_host = false
        witness.available_for_teaming = nil
        witness.can_morning = nil
        witness.can_afternoon = nil
        witness.can_evening = nil
        witness.free_on_day = nil
        witness.external_assignment = true #mark all as not interested, until we follow up
        witness.available_day1 = nil
        witness.available_day2 = nil
        witness.available_day3 = nil
        witness.available_day4 = nil
        witness.available_day5 = nil
        witness.available_day6 = nil
        witness.save!
      end
    end
  end

  # heroku --remote heroku run rake hotfixes:fix_cities
  # bundler exec rake hotfixes:fix_cities
  desc "fix cities"
  task :fix_cities => :environment do
    cities_name_fix = [["Tel Aviv-yafo", "תל אביב יפו"], ["Haifa", "חיפה"], ["ראשלצ", "ראשון לציון"], ["נהרייה", "נהריה"], ["גבעים", "גבעתיים"], ["עמונה","Amonah"], ["גושר", "גשר"], ["עין חר", "עין חרוד"], ["כפר תפ", "כפר תפוח"], ["שדה ורב", "שדה ורבורג"] ]
    cities_name_fix.each do |oldname, newname|
      city = City.find_by_name(oldname)
      city.update_column(:name, newname) unless city.nil?
    end
  end

end
