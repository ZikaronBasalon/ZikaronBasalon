class CreateIsraelCity < ActiveRecord::Migration
  def change
    create_table :israel_cities do |t|
      t.integer :city_identifier
      t.string :city_name_he
      t.string :city_name_en
      t.integer :city_id
      t.integer :region_id
      t.integer :israel_region_id

      t.timestamps
    end
  end
end
