class AddPreviousMetasToUserTables < ActiveRecord::Migration
  def change
    add_column :users, :previous_meta_id, :integer
    add_column :users, :previous_meta_type, :string
  end
end
