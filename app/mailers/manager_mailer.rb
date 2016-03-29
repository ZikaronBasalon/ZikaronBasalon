# encoding: UTF-8
class ManagerMailer < BaseMailer
	include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "\"זיכרון בסלון\" <zikaronbasalon@gmail.com>"

  def new_manager(manager_email)
  	mail :to => manager_email, :subject => t('manager_mailer.new_manager.title')
  end
end
