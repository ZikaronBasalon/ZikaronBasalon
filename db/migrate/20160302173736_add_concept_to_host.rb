class AddConceptToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :concept, :string
  end
end
