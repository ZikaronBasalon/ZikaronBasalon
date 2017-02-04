class AddDaysAvailableFieldsToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :available_day1, :boolean
    add_column :witnesses, :available_day2, :boolean
    add_column :witnesses, :available_day3, :boolean
    add_column :witnesses, :available_day4, :boolean
    add_column :witnesses, :available_day5, :boolean
    add_column :witnesses, :available_day6, :boolean
    add_column :witnesses, :available_day7, :boolean
  end
end
