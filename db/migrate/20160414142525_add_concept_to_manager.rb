class AddConceptToManager < ActiveRecord::Migration
  def change
    add_column :managers, :concept, :string
  end
end
