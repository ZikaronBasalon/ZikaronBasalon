class AddExternalAssignmentToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :external_assignment, :boolean, default: false
  end
end
