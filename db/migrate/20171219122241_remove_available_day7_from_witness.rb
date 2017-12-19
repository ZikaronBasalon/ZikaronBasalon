class RemoveAvailableDay7FromWitness < ActiveRecord::Migration
  def up
    remove_column :witnesses, :available_day7
  end

  def down
    add_column :witnesses, :available_day7, :boolean
  end
end
