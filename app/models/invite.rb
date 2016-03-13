class Invite < ActiveRecord::Base
  attr_accessible :guest_id, :host_id, :confirmed, :plus_ones

  belongs_to :guest
  belongs_to :host

  validates_uniqueness_of :guest_id

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
