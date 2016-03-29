class Invite < ActiveRecord::Base
  attr_accessible :guest_id, :host_id, :confirmed, :plus_ones

  belongs_to :guest
  belongs_to :host

  validates_uniqueness_of :guest_id

  scope :pending, -> { where(confirmed: false) }

  def self.cancel_overdue
    Invite.pending.each do |i|
      i.destroy if ((Time.now.utc - Invite.last.created_at.utc) / 1.day).to_i >= 4
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
end
