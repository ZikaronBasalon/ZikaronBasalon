desc "This task is called by the Heroku scheduler add-on"
task :cancel_overdue_invites => :environment do
  Invite.cancel_overdue
end

task :send_event_reminder => :environment do
  Invite.send_event_reminder
end

desc 'send incomplete_registration emails to hosts who have not completed registration yet'
task send_incomplete_registration: :environment do
  relevant_hosts = Host.incomplete_registration.where(incomplete_registration_sent_at: nil).where('created_at > ?', DateTime.new(2019, 3, 1)).where('created_at < ?', 60.minutes.ago).where(country_id: [97, nil])

  relevant_hosts.each do |host|
    begin
      host.update_columns(incomplete_registration_sent_at: Time.current)
      HostMailer.incomplete_registration(host.id).deliver_now
    rescue StandardError => e
      Rails.logger.error(e.inspect)
    end
  end
end

desc 'send contact_witness emails to hosts who have not contacted the witnesses yet'
task send_contact_witness: :environment do
  hours_to_wait = ENV['HOURS_BEFORE_CONTACT_WITNESS_EMAIL'].presence&.to_f || 48.0
  relevant_hosts =
    Host
    .where(contacted_witness: false, contact_witness_sent_at: nil)
    .where.not(assignment_time: nil)
    .where('assignment_time > ?', DateTime.new(2019, 3, 1))
    .where('assignment_time < ?', hours_to_wait.hours.ago)

  relevant_hosts.each do |host|
    begin
      host.update_columns(contact_witness_sent_at: Time.current)
      HostMailer.contact_witness(host.id).deliver_now
    rescue StandardError => e
      Rails.logger.error(e.inspect)
    end
  end
end
