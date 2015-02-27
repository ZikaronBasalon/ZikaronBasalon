# encoding: UTF-8
class RequestMailer < ActionMailer::Base
  default from: "zikaronbasalon@gmail.com"

  def send_request(host_id,guest_id)
  	@guest = Guest.find(guest_id)
  	@host = Host.find(host_id)
  	mail :to => @host.email, :subject => "התקבלה בקשה להתארח בסלון שלך"
  end
end
