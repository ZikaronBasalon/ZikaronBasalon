class AddFieldsToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :f_name, :string
    add_column :hosts, :l_name, :string
    add_column :hosts, :strangers, :boolean
    add_column :hosts, :status, :text
    add_column :hosts, :survivor_needed, :string
    remove_column :hosts, :name
    remove_column :hosts, :need_survivor
  end
end
