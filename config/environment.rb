# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ZikaronBasalon::Application.initialize!

ENV['delivery_method'] = 'letter_opener'
ENV['sendgrid_username'] = '123'
ENV['sendgrid_password'] = '123'
ENV['sendgrid_domain'] = 'abc.abc.com'
ENV['CURRENT_YEAR'] = '2017'

ActionMailer::Base.delivery_method = ENV['delivery_method'].to_sym if ENV['delivery_method'].present?

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['sendgrid_username'],
  :password => ENV['sendgrid_password'],
  :domain => ENV['sendgrid_domain'],
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}