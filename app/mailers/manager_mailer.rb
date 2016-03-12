# encoding: UTF-8
class ManagerMailer < BaseMailer
	include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "\"זיכרון בסלון\" <zikaronbasalon@gmail.com>"

  def new_manager(manager_email)
  	mail :to => manager_email, :subject => "התווספת כמוביל קהילה בזיכרון בסלון, עליך ליצור חשבון"
  end
end
