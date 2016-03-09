# encoding: UTF-8
class HostMailer < ActionMailer::Base
	include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "\"זיכרון בסלון\" <zikaronbasalon@gmail.com>"

  def manager_notification(manager_email,host_id)
  	@host = Host.find(host_id)
  	mail :to => manager_email, :subject => "מארח חדש בעירך"
  end

  def new_host(user_id)
  	@user = User.find(user_id)
  	mail :to => @user.email, :subject => t('host_mailer.new_host.subject')
  end

  def host_kit(host_id)
    @host = Host.find(host_id)
    mail :to => @host.email, :subject => "זכרון בסלון, ערכה למארח"
  end

  def shana_tova(host_id)
    @host = Host.find(host_id)
    # attachments['חומרים_מעוררי_מחשבה.pdf'] = File.read("#{Rails.root}/public/kit/thought_provoking_material.pdf")
    #attachments['ערכה_למארח.pdf'] = File.read("#{Rails.root}/public/kit/host_kit.pdf")
    #attachments['שלט_לאירוע.pdf'] = File.read("#{Rails.root}/public/kit/event_sign.pdf")
    # attachments['תעודת_הוקרה_לאיש_עדות.pdf'] = File.read("#{Rails.root}/public/kit/certificate.pdf")
    #attachments['תעודת_הוקרה_לאיש_עדות.docx'] = File.read("#{Rails.root}/public/kit/hebrew_certificate.docx")
    # attachments['שאלות_מנחות_לעדות.pdf'] = File.read("#{Rails.root}/public/kit/questions_for_witness.pdf")
    #attachments['עדויות_וסרטי_עדות.pdf'] = File.read("#{Rails.root}/public/kit/testimonials.pdf") 
    attachments['שנה_טובה_זיכרון_בסלון.jpg'] = File.read("#{Rails.root}/public/shana_tova.jpg")   
    mail :to => @host.email, :subject => "זוכרים את ניצולי השואה בראש השנה - התקשרו לברך שנה טובה!"
  end

  def mazal_tov_shani
    mail :to => "brusishani@gmail.com" , :subject => "נזכור, לא נסלח ונאחל לשני עד 120"
  end
end
