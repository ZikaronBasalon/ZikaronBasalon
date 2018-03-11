class AddInvitesCount < ActiveRecord::Migration
  def up
    add_column :hosts, :invites_pending_count, :integer, :default => 0
    add_column :hosts, :invites_confirmed_count, :integer, :default => 0

    Host.reset_column_information
    Host.all.each{|host|
      Host.update(host.id, :invites_pending_count =>Invite.where(host_id: host.id).where(confirmed: false).length)
      Host.update(host.id, :invites_confirmed_count =>Invite.where(host_id: host.id).where(confirmed: true).length)
    }
  end

  def down
    remove_column :hosts, :invites_pending_count
    remove_column :hosts, :invites_confirmed_count
  end
end
