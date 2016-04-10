# encoding: UTF-8
class RequestMailer < ActionMailer::Base
  include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "zikaronbasalon@gmail.com"

  def pending_invite_received(invite_id)
  	@invite = Invite.find(invite_id)
    @host = @invite.host
    @guest = @invite.guest
  	mail :to => @host.user.email, :subject => t('request_mailer.pending_invite_received.title')
  end

  def request_approved(invite_id, locale)
    @invite = Invite.find(invite_id)
    @host = @invite.host
    @guest = @invite.guest
    @locale = locale
    mail :to => @guest.user.email, :subject => t('request_mailer.request_approved.title', locale: @locale)
  end

  def request_rejected(invite_id, locale)
    @invite = Invite.find(invite_id)
    @host = @invite.host
    @guest = @invite.guest
    @locale = locale
    mail :to => @guest.user.email, :subject => t('request_mailer.request_rejected.title', locale: @locale)
  end

  def new_guest(invite_id, locale)
    @invite = Invite.find(invite_id)
    @host = @invite.host
    @guest = @invite.guest
    @locale = locale
    mail :to => @guest.user.email, :subject => t('request_mailer.new_guest.title', locale: @locale)
  end

  # def request_was_sent(host_id,guest_id)
  # 	@guest = Guest.find(guest_id)
  # 	@host = Host.find(host_id)
  # 	mail :to => @guest.email, :subject => "בקשתך נשלחה בהצלחה"
  # end

  # def request_was_confirmed(host_id,guest_id)
  # 	@guest = Guest.find(guest_id)
  # 	@host = Host.find(host_id)
  # 	mail :to => @guest.email, :subject => "בקשתך אושרה"
  # end

  
end
