# encoding: UTF-8
class ManagerMailer < BaseMailer
	include Sidekiq::Worker
  include Roadie::Rails::Automatic
  layout 'mailer_default'
  default from: "\"זיכרון בסלון\" <info@zikaronbasalon.com>>"

  def new_manager(manager_email)
  	mail :to => manager_email, :subject => t('manager_mailer.new_manager.title')
  end

  def assignment_cancelled(host_id, witness_id, unassigning_user)
  	@host = Host.find(host_id)
  	@witness = Witness.find(witness_id)
    @unassigning_user = unassigning_user

  	  	mail :to => "edut@zikaronbasalon.com", :subject => "ביטול ציוות"

  end
end
