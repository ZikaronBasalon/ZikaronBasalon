class AddSubAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :sub_admin, :boolean, :default => false
  end
end
