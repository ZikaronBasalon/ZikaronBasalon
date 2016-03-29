class CreateCommunityLeaderships < ActiveRecord::Migration
  def change
    create_table :community_leaderships do |t|
      t.integer :manager_id
      t.integer :city_id

      t.timestamps
    end
  end
end
