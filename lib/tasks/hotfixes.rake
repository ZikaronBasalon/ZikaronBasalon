
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
        #
        # this superceded by below
        if !host.witness.nil? && false
          comment = "ב2017 המארח/ת אירח/ה את איש/אשת העדות #{host.witness.full_name} #{host.witness.id}"
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
    
    #remove all invites tzivutim
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

  # heroku --remote heroku run rake hotfixes:sub_admin_password_reset
  # bundler exec rake hotfixes:sub_admin_password_reset
  #changes passwords of all admins except the full admin
  desc "change passwords of subadmins"
  task :sub_admin_password_reset => :environment do
    User.where(:meta_type => 'Manager', :admin => false).each do |u|
      u.reset_password!('set_new_pass_here','set_new_pass_here')
    end
  end
  
  desc "email blubbery"
  task :email_blubbery => :environment do
    User.where(:meta_type => 'Manager', :admin => false).each do |u|
      blubbery_email = u.email.sub '@','.@'
      u.update_column(:email, blubbery_email)
    end
  end

  desc "email deblubbery"
  task :email_deblubbery => :environment do
    letters = [('a'..'z')].map(&:to_a).flatten
    User.where(:meta_type => 'Manager', :admin => false).each do |u|
      deblubbery_email = u.email.sub '.@','@'
      user_id = u.id
      u.update_column(:email, deblubbery_email)
      user_to_change_password = User.find_by_id(user_id)
      new_password = (0...2).map { letters[rand(letters.length)] }.join
      new_pwd = 'zbs2018' + new_password
      user_to_change_password.password = new_pwd
      user_to_change_password.password_confirmation = new_pwd
      user_to_change_password.save
      p "#{user_to_change_password.email} #{new_pwd}\n"
    end
  end

  desc "witness host relation fix"
  task :witness_host_relation_fix => :environment do
    print("starting fixing relations!" + "/n")
    Witness.where("host_id IS NOT NULL").each {|witness|
      host = Host.where(id: witness.host_id).last
      witness.host = host
      host.witness = witness
      host.witness_id = witness.id
      host.save!
      witness.save!
      print("The relation between the host (" + host.id.to_s + " - " + host.user.full_name + ") and the witness (" + witness.id.to_s + " - " + witness.full_name + ") should be fixed!" + "\n")
    }
    print("finished fixing relations!")
  end

  desc "host fix witness contacted when has no witness "
  task :host_without_witness_remove_contacted => :environment do
    print("starting fixing relations!" + "/n")
    Host.all.each{|host|
      if host != nil && host.contacted_witness == true && host.witness_id.nil?
        host.contacted_witness = false
        host.save!
        print("The host (" + host.id.to_s + " - " + host.user.full_name + ") should be fixed!" + "/n")
      end

    }
    print("/n" + "finished fixing relations!")
  end

  desc "Add all cities to an other region of their country"
  task :add_cities_to_other_region_of_their_country => :environment do
    print("starting!" + "/n")

    Host.all.each{|host|
      if host.city.present?
        city = host.city
        country = host.country
        # add cities that have no region to other of their country
        if city.region.nil?
          other_region = Region.where(country_id:country.id, name:Region::OTHER_REGION_NAME).last

          # create other region for the country if it does not exist
          if other_region.nil?
            other_region = Region.new
            other_region.name = Region::OTHER_REGION_NAME
            other_region.country_id = country.id
            other_region.save!
          end

          # add city to region
          city.region_id = other_region.id
          city.save!
        end
      end

    }

    print("finished")
  end


  # Note: this is a helper rake task to detrmine weather there are cities without regions
  desc "Debug issue with united states additional city not under any region"
  task :debug_united_states_city_without_region => :environment do
    print("starting!" + "\n")
    united_states = Country.where(id:214).last
    united_states_hosts = Host.where(country_id: united_states.id)
    print "United states has " + united_states_hosts.count.to_s + "\n"
    Host.where(country_id: united_states.id).each{|host|
      if host.city.region.nil? || host.city.region.name != 'Other\אחר'
        print "The host with the id " + host.id.to_s + " has no region!" + "\n"
      end
    }
    print("finished")
  end

  desc "Fix Regions without country to have Israel as region"
  task :fix_regions_without_country => :environment do
    print("starting!" + "\n")
    Region.where(country_id: nil).each{|r|
      r.country_id = 97
      r.save!
    }
    print("\n" + "finished")
  end

  desc "Remove other regions before adding them again"
  task :remove_other_regions_before_re_adding_them => :environment do
    print("starting!" + "\n")
    Region.where(name: Region::OTHER_REGION_NAME).each{|r|
      r.destroy
    }
    print("\n" + "finished")
  end

  desc "Reduce invites pending count for invites destroyed automatically and not accounted for"
  task :reduce_invites_pending_count_for_invites_destroyed => :environment do
    print("starting!" + "\n")
    Host.all.each{|h|
      h.invites_pending_count = 0
      h.invites_confirmed_count = 0
      Invite.where(host_id: h.id).each{|i|
        invite_count = i.plus_ones + 1
        if i.confirmed
          h.invites_confirmed_count += invite_count
        elsif !i.confirmed
          h.invites_pending_count += invite_count
        end
      }
      h.save!
    }
    print("\n" + "finished")
  end

end
