class AddPreparationWantedToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :preparation_wanted, :boolean
  end
end
