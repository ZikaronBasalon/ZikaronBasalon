# encoding: UTF-8
class HostMailer < ActionMailer::Base
	include Sidekiq::Worker
	include Sidekiq::Mailer
  default from: "zikaronbasalon@gmail.com"

  def manager_notification(manager_email,host_id)
  	@host = Host.find(hist_id)
  	mail :to => manager_email, :subject => "מארח חדש בעירך"
  end

  def new_host(host_id)
  	@host = Host.find(host_id)
  	mail :to => @host.email, :subject => "ברכות על הצטרפותך!"
  end
end
