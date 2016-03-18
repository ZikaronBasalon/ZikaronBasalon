class AddContactedWitnessToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :contacted_witness, :boolean, :default => false
  end
end
