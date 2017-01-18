class AddPreparationEveningToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :preparation_evening, :boolean, default: false
  end
end
