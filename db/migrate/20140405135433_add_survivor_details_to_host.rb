class AddSurvivorDetailsToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :survivor_details, :text
  end
end
