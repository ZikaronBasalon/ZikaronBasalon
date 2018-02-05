class AddArchivedToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :archived, :boolean, :default => false
  end
end
