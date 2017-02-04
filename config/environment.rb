# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ZikaronBasalon::Application.initialize!

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