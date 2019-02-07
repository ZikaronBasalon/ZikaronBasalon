class CreateWorldCities < ActiveRecord::Migration
  def change
    create_table :world_cities do |t|
      t.string :city_name
      t.string :city_ascii_name
      t.float :lat
      t.float :lng
      t.text :country_name
      t.text :state
      t.integer :internal_id
      t.integer :city_id
      t.integer :country_id

      t.timestamps
    end
  end
end
