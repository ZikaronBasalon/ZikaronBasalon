class AddLatLngToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :lat, :float
    add_column :hosts, :lng, :float
  end
end
