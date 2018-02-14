class DropRegionTables < ActiveRecord::Migration
  def change
      drop_table :country_regions
      drop_table :region_cities
  end
end
