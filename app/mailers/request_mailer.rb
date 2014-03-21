class RequestMailer < ActionMailer::Base
  default from: "zikaronbasalon@gmail.com"

  def send_request(host,guest)
  	@guest = guest
  	mail :to => host.email, :subject => "Zikaron Basalon request"
  end
end
