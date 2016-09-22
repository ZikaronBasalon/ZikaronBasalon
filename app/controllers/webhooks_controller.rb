class WebhooksController < ApplicationController
  def webhook
  	Rails.logger.info params
  end
end
