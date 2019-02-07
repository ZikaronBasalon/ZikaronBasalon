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

    # now connect cities that weren't found to world cities and back
    match_array = [[2048, 5285], [939, 8459], [1381, 5339], [602, 9149], [492, 1503], [2047, 11069], [820, 10041], [734, 1403], [471, 4540], [1513, 7220], [1352, 10533], [1384, 11666], [1527, 11659], [1001, 3194], [1334, 6272], [878, 6269], [1571, 6269], [255, 10312], [473, 8759], [469, 9768], [1501, 6288], [57, 7390], [1448, 8679], [498, 10105], [1521, 6757], [1942, 385], [1454, 4220], [66, 6312], [1032, 5238], [1978, 1840], [411, 5284], [1547, 6828], [1350, 9221], [1507, 10454], [497, 10501], [997, 6900], [670, 6252], [496, 10350], [1439, 1402], [58, 6591], [1340, 2208], [880, 8483], [1000, 8483], [921, 4374], [1489, 6897], [1946, 1068], [828, 6787], [1977, 7390], [2091, 11328], [988, 9724], [1002, 11668], [250, 7861], [2087, 6721], [721, 6255], [760, 5089], [558, 10143], [1945, 11990], [744, 4238], [1609, 2802], [2090, 11899], [489, 10345], [488, 10341], [485, 10294], [1137, 12074], [1948, 10138], [699, 10232], [493, 10193], [495, 10217], [486, 10130], [1533, 10298], [1949, 9881], [369, 6260], [1940, 6676], [1379, 5769], [460, 10082], [1529, 6442], [195, 6803], [1026, 137], [1982, 11745], [491, 8094], [2009, 8888], [382, 4204], [2060, 477], [1445, 5037], [1511, 10769], [754, 5725], [270, 10363], [2011, 1403], [1943, 4540], [2056, 11069], [1423, 1503], [1508, 8459], [1315, 11659], [971, 3194], [1351, 5949], [1559, 6269], [1560, 6269], [2027, 7714], [1540, 11666], [783, 10533], [1523, 9777], [884, 4210], [1512, 4223], [1431, 6803], [1014, 137], [1410, 9389], [1500, 10769], [476, 11899], [1919, 11857], [674, 7390], [928, 10465], [2055, 5285], [694, 8651], [1532, 10298], [1496, 7044], [934, 8567], [559, 10049], [1956, 6299], [1306, 7164], [1337, 9221], [1387, 6901], [1378, 11309], [523, 10041], [942, 1147], [1916, 8630], [1313, 107], [1541, 11804], [13, 6270], [1505, 10454], [2022, 11683], [697, 6250], [1941, 6250], [1504, 6900], [827, 6900], [1510, 10395], [1944, 6591], [1488, 6591], [1443, 4801], [1980, 9789], [1397, 4374], [1411, 1068], [784, 8496], [1391, 12262], [1314, 12180], [2017, 12203], [1354, 5400], [1336, 2208], [1341, 2208], [2058, 7719], [2032, 11593], [2004, 8428], [886, 6676], [1483, 4292], [1947, 9881], [1531, 8317], [1515, 12839], [2045, 12484], [1528, 6442], [1502, 6901], [2000, 8165], [2082, 477], [1444, 5037], [1307, 11634], [1497, 8512], [1938, 10138], [115, 10232], [977, 5089], [888, 8037], [1970, 5725], [2033, 2802], [1469, 730], [1976, 11677], [1959, 11677], [1968, 11677], [1129, 12074], [930, 8502], [732, 4238], [1969, 4238], [1549, 8767], [1440, 7801], [1522, 5284], [1939, 5238], [1452, 8415], [952, 385], [826, 7009], [937, 9753], [1520, 11689], [954, 1821]]
    match_array.each do |city_id, world_city_id|
      WorldCity.where(id: world_city_id).update_all(city_id: city_id)
      City.where(id: city_id).update_all(world_city_id: world_city_id)
    end
  end
end
