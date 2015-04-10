# encoding: UTF-8
class RequestMailer < ActionMailer::Base
  include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "zikaronbasalon@gmail.com"

  def send_request(host_id,guest_id,invite_id)
  	@guest = Guest.find(guest_id)
  	@host = Host.find(host_id)
  	@invite = Invite.find(invite_id)
  	mail :to => @host.email, :subject => "התקבלה בקשה להתארח בסלון שלך"
  end

  def request_was_sent(host_id,guest_id)
  	@guest = Guest.find(guest_id)
  	@host = Host.find(host_id)
  	mail :to => @guest.email, :subject => "בקשתך נשלחה בהצלחה"
  end

  def request_was_confirmed(host_id,guest_id)
  	@guest = Guest.find(guest_id)
  	@host = Host.find(host_id)
  	mail :to => @guest.email, :subject => "בקשתך אושרה"
  end

  def request_was_rejected(host_id,guest_id)
    @guest = Guest.find(guest_id)
    @host = Host.find(host_id)
    mail :to => @guest.email, :subject => "בקשתך נדחתה"
  end
end
