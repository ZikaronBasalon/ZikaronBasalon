class ChangeSurvivorNeededToBoolean < ActiveRecord::Migration
  def up
    add_column :hosts, :survivor_needed, :boolean
  end

  def down
    remove_column :hosts, :survivor_needed
  end
end
