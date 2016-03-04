class ChangeWitnessConceptToString < ActiveRecord::Migration
  def up
  	remove_column :witnesses, :concept
  	add_column :witnesses, :concept, :string
  end

  def down
  	remove_column :witnesses, :concept
  	add_column :witnesses, :concept, :boolean
  end
end
