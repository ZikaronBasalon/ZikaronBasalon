class AddCurrentYearAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :current_year_admin, :boolean, :default => false
  end
end
