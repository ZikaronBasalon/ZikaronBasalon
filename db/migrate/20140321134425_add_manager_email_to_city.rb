class AddManagerEmailToCity < ActiveRecord::Migration
  def change
    add_column :cities, :manager_email, :string
  end
end
