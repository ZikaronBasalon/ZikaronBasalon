class CreateIsraelRegion < ActiveRecord::Migration
  def change
    create_table :israel_regions do |t|
      t.integer :identifier
      t.string :napa_name
      t.string :lishka_name

      t.timestamps
    end
  end
end
