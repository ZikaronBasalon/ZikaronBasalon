class ChangeHostFields < ActiveRecord::Migration
  def change
  	remove_column :hosts, :f_name
  	remove_column :hosts, :l_name
  	remove_column :hosts, :email
  	remove_column :hosts, :phone
  	add_column :hosts, :evening_public, :boolean, default: true
  	add_column :hosts, :hosted_before, :boolean, default: false
  	add_column :hosts, :event_date, :date
  	add_column :hosts, :event_time, :string
  	add_column :hosts, :floor, :integer
  	add_column :hosts, :elevator, :boolean
  	add_column :hosts, :org_name, :string
  	add_column :hosts, :org_role, :string
  	add_column :hosts, :event_language, :string
  	add_column :hosts, :contacted, :boolean, default: false
  end
end
