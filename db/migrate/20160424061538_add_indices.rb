class AddIndices < ActiveRecord::Migration
  def change
  	add_index :users, :meta_type
  	add_index :users, :meta_id
  	add_index :hosts, :country_id
  	add_index :hosts, :city_id
  	add_index :invites, :guest_id
  	add_index :invites, :host_id
  end
end
