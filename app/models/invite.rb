class Invite < ActiveRecord::Base
  attr_accessible :guest_id, :host_id, :confirmed, :plus_ones

  belongs_to :guest
  belongs_to :host



  validates_uniqueness_of :guest_id

  scope :pending, -> { where(confirmed: false) }
  scope :confirmed, -> { where(confirmed: true) }

  def self.cancel_overdue
    Invite.pending.each do |i|
      if ((Time.now.utc - i.created_at.utc) / 1.day).to_i >= 1
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
