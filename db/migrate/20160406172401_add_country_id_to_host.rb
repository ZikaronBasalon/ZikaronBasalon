class AddCountryIdToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :country_id, :integer
  end
end
