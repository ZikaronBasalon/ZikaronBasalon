class AddNameOfCityToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :name_of_city, :string
  end
end
