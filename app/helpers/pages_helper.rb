module PagesHelper
	def invite_exists?(id)
		@invites.include?(id) ? "sent" : "send"
	end

	def request_btn_text(id)
		@invites.include?(id) ? "Request Sent" : "Send Request"
	end
end
