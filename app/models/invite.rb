# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  guest_id   :integer
#  host_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  confirmed  :boolean          default(FALSE)
#  plus_ones  :integer          default(0)
#

class Invite < ActiveRecord::Base
  has_paper_trail
  attr_accessible :guest_id, :host_id, :confirmed, :plus_ones

  belongs_to :guest
  belongs_to :host
  after_create :after_create
  after_update :after_update
  after_destroy :after_destroy

  def after_destroy
    h = Host.where(id: host_id).last
    if confirmed
      h.invites_confirmed_count -= total_invites_count
    elsif confirmed == false
      h.invites_pending_count -= total_invites_count
    end
    h.save!
  end

  def after_create
    h = Host.where(id: host_id).last
    h.invites_pending_count += total_invites_count
    h.save!
  end

  def after_update
    h = Host.where(id: host_id).last
    if confirmed_changed?
      # invite approved
      if confirmed == true
        h.invites_confirmed_count += total_invites_count
        h.invites_pending_count -= total_invites_count
      # rejected invitation
      elsif confirmed_was == false && confirmed == nil
        h.invites_pending_count -= total_invites_count
      # rejected after confirmation
      elsif confirmed_was == true && confirmed == nil
        h.invites_confirmed_count -= total_invites_count
      end
    end
    h.save!
  end

  def total_invites_count
    return (1 + plus_ones)
  end


  validates_uniqueness_of :guest_id

  scope :pending, -> { where(confirmed: false) }
  scope :confirmed, -> { where(confirmed: true) }

  def self.cancel_overdue
    Invite.pending.each do |i|
      if ((Time.now.utc - i.created_at.utc) / 1.day).to_i >= 2
        i.destroy
      end
    end
  end

  def self.send_event_reminder
    Invite.confirmed.each do |i|
      RequestMailer.event_reminder(i).deliver if i.in_two_days
    end
  end

  def rejected
    confirmed.nil?
  end

  def display_status
    if self.confirmed.nil?
      "נדחה"
    elsif self.confirmed
      "אושר"
    else
      "ממתין לאישור"
    end
  end

  def in_two_days
    host.try(:event_date) &&
    host.try(:event_date) === 2.days.from_now.to_date
  end
end
