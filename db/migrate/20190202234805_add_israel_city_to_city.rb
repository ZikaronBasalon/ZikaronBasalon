class AddIsraelCityToCity < ActiveRecord::Migration
  def change
    add_column :cities, :israel_city_id, :integer
  end
end
