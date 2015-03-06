module RegionsHelper
	def send_mail
		client = SendGrid::Client.new do |c|
		  c.api_user = ENV['SENDGRID_USERNAME']
		  c.api_key = ENV['SENDGRID_PASSWORD']
		end
		mail = SendGrid::Mail.new do |m|
		  m.to = 'uriklar@gmail.com'
		  m.from = 'taco@cat.limo'
		  m.subject = 'Hello world!'
		  m.text = 'aaaaa'
		end

		header = Smtpapi::Header.new
		header.add_substitution('--name--', ['Uri'])        # sub = {keep: ['secret']}
		header.add_category("Testing")
		header.add_filter('templates', 'enable', 1)    # necessary for each time the template engine is used
		header.add_filter('templates', 'template_id', '3246d7b3-36c6-4ef0-aee4-d0cb87da4e60')
		mail.smtpapi = header

		puts client.send(mail) 
	end
end
