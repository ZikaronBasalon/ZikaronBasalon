class AddActiveThisYearToUser < ActiveRecord::Migration
  def change
    add_column :users, :active_this_year, :boolean, :default => false
  end
end
