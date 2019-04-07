class InvitesController < ApplicationController
  respond_to :html, :json

  def create
    current_user.update_columns(active_this_year: true)
    @invite = Invite.new({
      guest_id: current_user.meta.id,
      host_id: params[:invite][:host_id],
      plus_ones: params[:invite][:plus_ones].to_i
    })

    if @invite.save
      RequestMailer.pending_invite_received(@invite.id, I18n.locale).deliver
      RequestMailer.new_guest(@invite.id, I18n.locale).deliver
      render :json => { error: false }
    else
      render :json => { error: true }
    end
  end

  def update
    @invite = Invite.find(params[:id])
    @invite.update_attributes(params[:invite])
    RequestMailer.request_approved(@invite.id, I18n.locale).deliver if @invite.confirmed
    RequestMailer.request_rejected(@invite.id, I18n.locale).deliver if @invite.rejected

    render :json => Invite.where(host_id: @invite.host.id)
                          .to_json(:include => { guest: { :include => :user }})
  end

  def destroy
    RequestMailer.guest_cancelled_request(params[:id], I18n.locale).deliver
    render :json => { success: true }
  end
end
