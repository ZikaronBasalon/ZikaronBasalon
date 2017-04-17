class AddWitnessToManager < ActiveRecord::Migration
  def change
    add_column :managers, :witness_only, :boolean, :default => false
  end
end
