class ChangeSurvivorNeededToBoolean < ActiveRecord::Migration
  def up
    change_column :hosts, :survivor_needed, :boolean
  end

  def down
    change_column :hosts, :survivor_needed, :string
  end
end
