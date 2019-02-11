class AddWorldCityIdToCity < ActiveRecord::Migration
  def change
    add_column :cities, :world_city_id, :integer
  end
end
