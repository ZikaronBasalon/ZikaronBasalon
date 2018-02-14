class AddCountryIdToRegion < ActiveRecord::Migration
  def change
    add_column :regions, :country_id, :integer
  end
end
