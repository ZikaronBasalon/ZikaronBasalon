class WebhooksController < ApplicationController
  def webhook
  	render :nothing => true, :status => 200
  end
end
