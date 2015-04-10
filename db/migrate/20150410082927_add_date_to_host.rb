class AddDateToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :date, :date
  end
end
