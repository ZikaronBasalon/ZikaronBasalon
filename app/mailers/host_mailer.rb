# encoding: UTF-8
class HostMailer < BaseMailer
	include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "\"זיכרון בסלון\" <zikaronbasalon@gmail.com>"

  # def manager_notification(manager_email,host_id)
  # 	@host = Host.find(host_id)
  # 	mail :to => manager_email, :subject => "מארח חדש בעירך"
  # end

  def new_host(user_id, locale)
  	@user = User.find(user_id)
    @locale = locale
  	mail :to => @user.email, :subject => t('host_mailer.new_host.subject', locale: @locale)
  end

  def witness_assigned(host_id, locale)
    @host = Host.find(host_id)
    @locale = locale
    mail :to => @host.user.email, :subject => t('host_mailer.witness_assigned.subject', locale: @locale)
  end

  # def shana_tova(host_id)
  #   attachments['שנה_טובה_זיכרון_בסלון.jpg'] = File.read("#{Rails.root}/public/shana_tova.jpg")   
  #   mail :to => @host.email, :subject => "זוכרים את ניצולי השואה בראש השנה - התקשרו לברך שנה טובה!"
  # end
end
