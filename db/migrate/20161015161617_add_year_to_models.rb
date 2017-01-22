class AddYearToModels < ActiveRecord::Migration
  def change
  	add_column :hosts, :year, :string
  	add_column :guests, :year, :string
  	add_column :witnesses, :year, :string

  	Host.update_all year: '2016'
  	Guest.update_all year: '2016'
  	Witness.update_all year: '2016'
  end
end
