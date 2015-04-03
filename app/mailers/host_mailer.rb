# encoding: UTF-8
class HostMailer < ActionMailer::Base
	include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "zikaronbasalon@gmail.com"

  def manager_notification(manager_email,host_id)
  	@host = Host.find(host_id)
  	mail :to => manager_email, :subject => "מארח חדש בעירך"
  end

  def new_host(host_id)
  	@host = Host.find(host_id)
    attachments['חומרים_מעוררי_מחשבה.pdf'] = File.read("#{Rails.root}/public/kit/thought_provoking_material.pdf")
    attachments['ערכה_למארח.pdf'] = File.read("#{Rails.root}/public/kit/host_kit.pdf")
    attachments['שלט_לאירוע.pdf'] = File.read("#{Rails.root}/public/kit/event_sign.pdf")
    attachments['תעודת_הוקרה_לאיש_עדות.pdf'] = File.read("#{Rails.root}/public/kit/certificate.pdf")
  	mail :to => @host.email, :subject => "ברכות על הצטרפותך!"
  end

  def host_kit(host_id)
    @host = Host.find(host_id)
    mail :to => @host.email, :subject => "זכרון בסלון, ערכה למארח"
  end
end
