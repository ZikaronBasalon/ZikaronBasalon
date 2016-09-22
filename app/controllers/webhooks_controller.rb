class WebhooksController < ApplicationController
  def webhook
  	Rails.logger.info params
  	if (params['hub.verify_token'] === 'zikaron-basalon-verify-token')
  		render nothing: true, status: 200
  	end
  end
end
