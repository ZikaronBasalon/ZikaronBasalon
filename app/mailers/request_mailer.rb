# encoding: UTF-8
class RequestMailer < ActionMailer::Base
  include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "info@zikaronbasalon.com>"

  def pending_invite_received(invite_id, locale)
  	@invite = Invite.find(invite_id)
    @host = @invite.host
    @guest = @invite.guest
    @locale = locale
  	mail :to => @host.user.email, :subject => t('request_mailer.pending_invite_received.title', locale: @locale)
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

  def guest_cancelled_request(invite_id, locale)
    @invite = Invite.find(invite_id)
    @host = @invite.host
    @guest = @invite.guest
    @locale = locale
    @invite.destroy
    mail :to => @host.user.email, :subject => t('request_mailer.guest_cancelled_request.title', locale:@locale)
  end

  def event_reminder(invite_id)
    @invite = Invite.find(invite_id)
    @host = @invite.host
    @guest = @invite.guest
    @locale = @guest.user.locale ? @guest.user.locale.to_sym : :he
    mail :to => @guest.user.email, :subject => t('request_mailer.event_reminder.title', locale: @locale)
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
