class AddSubscribedToMarketingToUser < ActiveRecord::Migration
  def change
    add_column :users, :subscribed_to_marketing, :boolean
  end
end
