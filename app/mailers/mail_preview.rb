# app/mailers/mail_preview.rb or lib/mail_preview.rb
class MailPreview < MailView
  def new_host_en
    host = Host.last
    HostMailer.new_host(host.user.id, 'en')
  end

  def new_host_he
    host = Host.last
    HostMailer.new_host(host.user.id, 'he')
  end
end