class AddManagerIdToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :manager_id, :integer
  end
end
