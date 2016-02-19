class AddPhoneToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :phone, :string
  end
end
