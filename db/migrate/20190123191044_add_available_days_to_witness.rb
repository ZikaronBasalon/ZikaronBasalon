class AddAvailableDaysToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :available_day7, :boolean
    add_column :witnesses, :available_day8, :boolean
    add_column :witnesses, :available_day9, :boolean
  end
end
