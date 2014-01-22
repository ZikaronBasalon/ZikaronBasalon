class AddNumOfFriendsToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :num_of_friends, :integer
  end
end
