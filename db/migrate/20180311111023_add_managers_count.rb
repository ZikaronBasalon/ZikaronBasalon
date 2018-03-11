class AddManagersCount < ActiveRecord::Migration
  def up
    add_column :cities, :community_leaderships_count, :integer, :default => 0

    City.reset_column_information
    City.all.each{|city|
      City.update(city.id, :community_leaderships_count => city.managers.length)
    }
  end

  def down
    remove_column :cities, :community_leaderships_count
  end
end
