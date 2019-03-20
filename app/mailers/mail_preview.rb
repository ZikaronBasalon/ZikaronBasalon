# app/mailers/mail_preview.rb or lib/mail_preview.rb
class MailPreview < MailView
  def new_host_en
    host = Host.last
    HostMailer.new_host(host.user.id, :en)
  end

  def new_host_he
    host = Host.last
    HostMailer.new_host(host.user.id, :he)
  end

  def guest_cancelled_request_en
    invite_id = Invite.first.id
    RequestMailer.guest_cancelled_request(invite_id, :en)
  end

  def guest_cancelled_request_he
    invite_id = Invite.first.id
    RequestMailer.guest_cancelled_request(invite_id, :he)
  end

  def host_rejected_request_en
    invite_id = Invite.first.id
    RequestMailer.request_rejected(invite_id, :en)
  end

  def host_rejected_request_he
    invite_id = Invite.first.id
    RequestMailer.request_rejected(invite_id, :he)
  end

  def guest_send_request_en
    invite_id = Invite.first.id
    RequestMailer.new_guest(invite_id, :en)
  end

  def guest_send_request_he
    invite_id = Invite.first.id
    RequestMailer.new_guest(invite_id, :he)
  end

  def pending_invite_received_en
    invite_id = Invite.first.id
    RequestMailer.pending_invite_received(invite_id, :en)
  end

  def pending_invite_received_he
    invite_id = Invite.first.id
    RequestMailer.pending_invite_received(invite_id, :he)
  end


  def event_reminder_en
    invite = Invite.joins(:host).where('hosts.country_id != 97').first
    invite_id = invite.id
    RequestMailer.event_reminder(invite_id)
  end

  def event_reminder_he
    invite = Invite.joins(:host).where('hosts.country_id = 97').first
    invite_id = invite.id
    RequestMailer.event_reminder(invite_id)
  end

  def witness_assigned_survivor_he
    host_id = Host.last.id
    witness_id = Witness.where(:witness_type => :survivor).last
    HostMailer.witness_assigned(host_id, witness_id, :he)
  end

  def witness_assigned_academia_he
    host_id = Host.last.id
    witness_id = Witness.where(:witness_type => :academia).last
    HostMailer.witness_assigned(host_id, witness_id, :he)
  end

  def witness_assigned_second_generation_he
    host_id = Host.last.id
    witness_id = Witness.where(:witness_type => :second_generation).last
    HostMailer.witness_assigned(host_id, witness_id, :he)
  end

  def witness_assigned_therapist_he
    host_id = Host.last.id
    witness_id = Witness.where(:witness_type => :therapist).last
    HostMailer.witness_assigned(host_id, witness_id, :he)
  end

  def incomplete_registration_he
    host = Host.last
    HostMailer.incomplete_registration(host.id)
  end
end
