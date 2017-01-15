class AddAdditionalPhoneToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :additional_phone, :string
  end
end
