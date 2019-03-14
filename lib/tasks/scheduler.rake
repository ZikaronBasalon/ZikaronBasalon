desc "This task is called by the Heroku scheduler add-on"
task :cancel_overdue_invites => :environment do
  Invite.cancel_overdue
end

task :send_event_reminder => :environment do
  Invite.send_event_reminder
end

desc 'send incomplete_registration emails to hosts who have not completed registration yet'
task send_incomplete_registration: :environment do
  relevant_hosts = Host.incomplete_registration.where(incomplete_registration_sent_at: nil).where('created_at > ?', DateTime.new(2019, 3, 1)).where('created_at > ?', 5.minutes.ago).where(country_id: 97)

  relevant_hosts.each do |host|
    begin
      host.update_columns(incomplete_registration_sent_at: Time.current)
      HostMailer.incomplete_registration(host.id).deliver_now
    rescue StandardError => e
      Rails.logger.error(e.inspect)
    end
  end
end
