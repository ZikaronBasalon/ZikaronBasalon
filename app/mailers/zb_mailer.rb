module ZbMailer
	TEMPLATES = {
		"registration" => '3246d7b3-36c6-4ef0-aee4-d0cb87da4e60'
	}

	def self.client
		SendGrid::Client.new do |c|
  		c.api_key = ENV['sendgrid_api_key']
		end
	end

	def self.template(template_name)
		# TODO: handle template_name not found
		SendGrid::Template.new(TEMPLATES[template_name])
	end

	def self.mail_defaults
		{
		  from: 'admin@email.com',
		  html: ' ',
		  text: ' ',
		  subject: 'Email is great',
		}
	end

	def self.create_recipient(email)
		SendGrid::Recipient.new(email)
	end

	def self.registration(user_id)
		user = User.find(user_id)
		recipient = self.create_recipient(user.email)
		recipient.add_substitution('-first_name-', user.first_name)

		mailer = SendGrid::TemplateMailer.new(self.client, self.template('registration'), [recipient])
		mailer.mail(self.mail_defaults)
	end



end