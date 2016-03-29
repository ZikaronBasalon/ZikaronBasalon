class ChangeSurvivorNeededToBoolean < ActiveRecord::Migration
  def up
  	remove_column :hosts, :survivor_needed
    add_column :hosts, :survivor_needed, :boolean
  end

  def down
    remove_column :hosts, :survivor_needed
  end
end
