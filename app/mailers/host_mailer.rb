# encoding: UTF-8
class HostMailer < ActionMailer::Base
  default from: "zikaronbasalon@gmail.com"

  def manager_notification(manager_email,host)
  	@host = host
  	mail :to => manager_email, :subject => "מארח חדש בעירך"
  end

  def new_host(host)
  	@host = host
  	mail :to => host.email, :subject => "ברכות על הצטרפותך!"
  end
end
