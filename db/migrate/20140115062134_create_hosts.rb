class CreateHosts < ActiveRecord::Migration
  def self.up
    create_table :hosts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.integer :city_id
      t.integer :max_guests
      t.boolean :need_survivor
      t.text :free_text
      t.timestamps
    end
  end

  def self.down
    drop_table :hosts
  end
end
