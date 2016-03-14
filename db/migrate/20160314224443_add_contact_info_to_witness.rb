class AddContactInfoToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :contact_name, :string
    add_column :witnesses, :contact_phone, :string
  end
end
