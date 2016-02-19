class AddAdditionalFieldsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :full_name, :string
    add_column :users, :phone, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :meta_id, :integer
    add_column :users, :meta_type, :string

    add_index :users, [:meta_id, :meta_type]
  end
end
