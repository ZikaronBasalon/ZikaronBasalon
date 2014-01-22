class AddNameToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :name, :string
  end
end
