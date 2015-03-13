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
			@invites.include?(id) ? t('shared.request_sent') : t('shared.send_request')
		else
			t('shared.send_request')
		end
	end

	def host_conditions_hash
		h = { }
		h[:strangers] = true
		@is_city = !params[:city_id].blank?
		h[:city_id] = params[:city_id] if @is_city
    h[:max_guests] = 1..9999
    h
	end
end
