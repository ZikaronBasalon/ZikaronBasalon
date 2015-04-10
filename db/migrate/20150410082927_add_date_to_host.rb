class AddDateToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :date, :datetime
  end
end
