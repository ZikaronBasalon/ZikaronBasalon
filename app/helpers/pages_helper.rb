# encoding: UTF-8
module PagesHelper
	def invite_exists?(id)
		if !@invites.nil?
			@invites.include?(id) ? "sent" : "send"
		else
			"send"
		end
	end

	def request_btn_text(id)
		if !@invites.nil?
			@invites.include?(id) ? "בקשתך נשלחה" : "שלח בקשה"
		else
			"שלח בקשה"
		end
	end
end
