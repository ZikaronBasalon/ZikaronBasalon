class AddConfirmedToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :confirmed, :boolean, :default => false
  end
end
