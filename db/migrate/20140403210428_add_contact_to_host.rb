class AddContactToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :contact, :string
  end
end
