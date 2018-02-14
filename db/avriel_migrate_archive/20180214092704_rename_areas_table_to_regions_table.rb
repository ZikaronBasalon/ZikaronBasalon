class RenameAreasTableToRegionsTable < ActiveRecord::Migration
  def change
    rename_table :country_areas, :country_regions
  end
end