class AddChulAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :chul_admin, :boolean
  end
end
