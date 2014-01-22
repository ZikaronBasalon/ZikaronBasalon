class RequestMailer < ActionMailer::Base
  default from: "uriklar@gmail.com"

  def send_request(host,guest)
  	@guest = guest
  	mail :to => host.email, :subject => "Zikaron Basalon request"
  end
end
