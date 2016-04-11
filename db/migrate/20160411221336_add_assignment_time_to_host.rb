class AddAssignmentTimeToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :assignment_time, :datetime
  end
end
