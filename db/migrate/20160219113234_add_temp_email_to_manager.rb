class AddTempEmailToManager < ActiveRecord::Migration
  def change
    add_column :managers, :temp_email, :string
  end
end
