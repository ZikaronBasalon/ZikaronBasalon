class AddActiveThisYearToUser < ActiveRecord::Migration
  def change
    add_column :users, :active_this_year, :boolean, :default => true
  end
end
