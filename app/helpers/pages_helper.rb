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

	def current_user_json
		# if current_user && current_user.guest?
		# 	return current_user.to_json(:include => { meta: { :include => :invites } }) 
		# end

		# current_user ? current_user.to_json(:include => :meta) : current_user.to_json
		meta = current_user.meta
		{
			email: current_user.email,
			full_name: current_user.full_name,
			meta: {

			},
			meta_type: meta.class.name,
			meta_id: meta.id
		}.to_json
	end
end
