# encoding: UTF-8
class RequestMailer < ActionMailer::Base
  default from: "zikaronbasalon@gmail.com"

  def send_request(host,guest)
  	@guest = guest
  	@host = host
  	mail :to => host.email, :subject => "התקבלה בקשה להתארח בסלון שלך"
  end
end
