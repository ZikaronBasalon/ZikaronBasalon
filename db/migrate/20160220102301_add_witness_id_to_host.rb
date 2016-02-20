class AddWitnessIdToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :witness_id, :integer
  end
end
