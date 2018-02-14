class CreateRegionCities < ActiveRecord::Migration
  def change
    create_table :region_cities do |t|
      t.integer :region_id
      t.integer :city_id

      t.timestamps
    end
  end
end
