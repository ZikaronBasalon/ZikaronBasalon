class CreateCountryAreas < ActiveRecord::Migration
  def up
    create_table :country_areas do |t|
      t.integer :country_id
      t.integer :area_id

      t.timestamps
    end
  end

  def down
    drop_table :country_regions
  end
end
