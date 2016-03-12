class AddPlusOnesToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :plus_ones, :integer, default: 0
  end
end
