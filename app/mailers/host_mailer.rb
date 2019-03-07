# encoding: UTF-8
class HostMailer < BaseMailer
	include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "\"זיכרון בסלון\" <info@zikaronbasalon.com>"

  # def manager_notification(manager_email,host_id)
  # 	@host = Host.find(host_id)
  # 	mail :to => manager_email, :subject => "מארח חדש בעירך"
  # end

  def new_host(user_id, locale)
  	@user = User.find(user_id)
    @host = Host.joins(:user).where('users.id =' + user_id.to_s).last
    @locale = locale
  	mail :to => @user.email, :subject => t('host_mailer.new_host.subject', locale: @locale)
  end

  def witness_assigned(host_id, witness_id, locale)
    @host = Host.find(host_id)
    @witness = Witness.find(witness_id)
    @locale = locale
    # @witness_type_text = witness_type_text
    mail :to => @host.user.email, :subject => t('host_mailer.witness_assigned.subject', locale: @locale)
  end

  def moment_before(host_id)
    @host = Host.find(host_id)
    attachments['ערכת מארח - זיכרון בסלון.pdf'] = File.read("#{Rails.root}/public/host_kit_2016.pdf")
    mail :to => @host.user.email, :subject => 'זיכרון בסלון - רגע לפני'
  end

  def moment_after(host_id)
    @host = Host.find(host_id)
    mail :to => @host.user.email, :subject => 'זיכרון בסלון - איך היה לכם? (מייל מעודכן)'
  end

  def moment_after_witness(witness_id)
    @witness = Witness.find(witness_id)
    if @witness.email
      mail :to => @witness.email, :subject => 'זיכרון בסלון - איך היה לכם?'
    end
  end

  # def shana_tova(host_id)
  #   attachments['שנה_טובה_זיכרון_בסלון.jpg'] = File.read("#{Rails.root}/public/shana_tova.jpg")
  #   mail :to => @host.email, :subject => "זוכרים את ניצולי השואה בראש השנה - התקשרו לברך שנה טובה!"
  # end
end
