class AddActiveToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :active, :boolean, :default => false
  end
end
