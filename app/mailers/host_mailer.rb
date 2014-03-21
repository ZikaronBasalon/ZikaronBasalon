class HostMailer < ActionMailer::Base
  default from: "zikaronbasalon@gmail.com"

  def manager_notification(manager_email,host)
  	@host = host
  	mail :to => manager_email, :subject => "New Host in your city"
  end
end
