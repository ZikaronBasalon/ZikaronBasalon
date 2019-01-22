class AddLastYearActiveToUsers < ActiveRecord::Migration
  def change
    add_column :hosts, :active_last_year, :boolean
    add_column :witnesses, :active_last_year, :boolean
  end
end
