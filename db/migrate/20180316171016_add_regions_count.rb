class AddRegionsCount < ActiveRecord::Migration
  def up
    add_column :countries, :regions_count, :integer, :default => 0

    Country.reset_column_information
    Country.all.each{|country|
      Country.update(country.id, :regions_count => Region.where(country_id: country.id).length)
    }
  end

  def down
    remove_column :countries, :regions_count
  end
end
