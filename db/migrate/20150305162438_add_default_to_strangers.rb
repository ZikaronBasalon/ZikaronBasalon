class AddDefaultToStrangers < ActiveRecord::Migration
  def up
  change_column :hosts, :strangers, :boolean, :default => true
end

def down
  change_column :hosts, :strangers, :boolean, :default => nil
end
end
