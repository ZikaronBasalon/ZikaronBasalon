namespace :cities_tasks do
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
    [[957, "מודיעין-מכבים-רעות"], [6, "תל אביב - יפו"], [958, "תל אביב - יפו"], [948, "יקנעם (מושבה)"], [257, "פרדס חנה-כרכור"], [1536, "סביון"], [1398, "בית שמש"], [995, "ירושלים"], [448, "גבעת חיים (מאוחד)"], [152, "יקנעם עילית"], [972, "מעלות-תרשיחא"], [89, "קדימה-צורן"], [1492, "תל אביב - יפו"], [985, "רחובות"], [39, "כוכב יאיר"], [525, "נתניה"], [966, "ירושלים"], [653, "כנרת (קבוצה)"], [459, "נהריה"], [990, "באר שבע"], [970, "קרית ביאליק"], [1073, "שריגים (לי-און)"], [357, "ראשון לציון"], [390, "הילה"], [1013, "חולון"], [1303, "בנימינה-גבעת עדה"], [441, "בית חירות"], [418, "חגלה"], [742, "ניר עם"], [78, "מעש"], [926, "כפר בן נון"], [1044, "מודיעין-מכבים-רעות"], [86, "קדימה-צורן"], [1663, "תל אביב - יפו"], [1870, "קרית שמונה"], [1576, "אשרת"], [90, "יהוד-מונוסון"], [363, "סולם"], [1428, "טנא"], [1836, "גנות"], [1997, "בית ברל"], [1921, "כפר יחזקאל"], [301, "מעין ברוך"], [103, "גבעתיים"], [202, "בנימינה-גבעת עדה"], [1393, "יבנה"], [1788, "הוד השרון"], [747, "עספיא"], [1498, "רמת גן"], [1304, "עספיא"], [1282, "אשדות יעקב  (איחוד)"], [1893, "קדימה-צורן"], [184, "מרחביה (מושב)"], [672, "חירות"], [421, "בן שמן (מושב)"], [259, "לוחמי הגיטאות"], [1385, "לוד"], [1915, "בני ציון"], [1570, "שפיים"], [1374, "בית יצחק-שער חפר"], [38, "מדרשת בן גוריון"], [183, "מרחביה (מושב)"], [1407, "גבעתיים"], [389, "הרצליה"], [405, "חצור-אשדוד"], [1607, "הוד השרון"], [2002, "כוכב יעקב"], [2007, "גבעתיים"], [404, "מודיעין-מכבים-רעות"], [1390, "באר שבע"], [251, "משגב עם"], [982, "רמלה"], [414, "כפר חושן"], [609, "אשדות יעקב  (מאוחד)"], [547, "צביה"], [746, "תל אביב - יפו"], [776, "מעלות-תרשיחא"], [395, "קרית ים"], [1130, "רעננה"], [170, "גיניגר"], [612, "דגניה א'"], [610, "גינוסר"], [1085, "יאנוח-ג'ת"], [1357, "אשדוד"], [1481, "גבעת שמואל"], [1466, "בת ים"], [213, "ניר דוד (תל עמל)"], [1312, "הרצליה"], [1525, "זכרון יעקב"], [1326, "ברעם"], [536, "טל-אל"], [1480, "קרית גת"], [1329, "עמיר"], [989, "בנימינה-גבעת עדה"], [1517, "בני ראם"], [668, "גלעד (אבן יצחק)"], [353, "קרית עקרון"], [1955, "לוד"]].each do |city_id, city_name|
        israel_city_to_update = IsraelCity.where(city_name_he: city_name)&.first
        israel_city_to_update.update_columns(city_id: city_id) if israel_city_to_update.present?
        city_to_update = City.where(id: city_id)&.first
        city_to_update.update_columns(name: city_name, name_he: city_name) if city_to_update.present?
    end
    IsraelCity.all.each do |israel_city|
      city_to_update = City.where(name:israel_city.city_name_he)&.first
      city_to_update.update_columns(israel_city_id: israel_city.id) if city_to_update.present?
    end

    IsraelCity.where(city_id:nil).each do |israel_city|
      c = City.where(name: israel_city.city_name_he).first
      if c.nil?
        city = City.create(name: israel_city.city_name_he, name_he: israel_city.city_name_he, name_en: israel_city.city_name_en, israel_city_id: israel_city.id)
        israel_city.update_columns(city_id: city.id)
      else
        israel_city.update_columns(city_id: c.id)
      end
    end
    # update all City data from IsraelCity
    IsraelCity.where.not(city_id:nil).each do |israel_city|
      city = City.find(israel_city.city_id)
      city.update_columns(name: israel_city.city_name_he, name_he: israel_city.city_name_he, name_en: israel_city.city_name_en, israel_city_id: israel_city.id)
    end

    # merge duplicates
    City.all.group_by(&:name).map{|a,b| [a, b.size] if b.size > 1}.compact.each do |city_name, _|
      cities = City.where(name: city_name)
      preferred_cities = cities.where.not(name_he: nil).order('created_at asc')
      if preferred_cities.present?
        city_to_keep = preferred_cities.first
        cities_to_merge = cities.where.not(id: city_to_keep.id)
      else
        city_to_keep = cities.first
        cities_to_merge = cities.from(1)
      end
      city_ids_to_merge = cities_to_merge.map(&:id)
      cities_to_merge.delete_all
      IsraelCity.where(city_id: city_ids_to_merge).delete_all
      city_ids_to_merge.each do |city_id|
        Witness.where(city_id: city_id).update_all(city_id: city_to_keep.id)
        Host.where(city_id: city_id).update_all(city_id: city_to_keep.id)
        CommunityLeadership.where(city_id: city_id).update_all(city_id: city_to_keep.id)
        IsraelCity.where(city_id: city_id).update_all(city_id: city_to_keep.id)
      end
    end
  end
end