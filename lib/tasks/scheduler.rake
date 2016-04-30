desc "This task is called by the Heroku scheduler add-on"
task :cancel_overdue_invites => :environment do
  Invite.cancel_overdue
end

task :send_event_reminder => :environment do
  Invite.send_event_reminder
end