class ChangeColumnAreaIdToRegionId < ActiveRecord::Migration
  rename_column :country_regions, :area_id, :region_id
end
