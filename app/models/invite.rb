class Invite < ActiveRecord::Base
  attr_accessible :guest_id, :host_id, :confirmed
  after_update :update_available_places

  belongs_to :guest
  belongs_to :host

  def update_available_places
    host = self.host
    if self.confirmed
    	num_of_guests = (self.guest.num_of_friends || 0) + 1
    	if host.max_guests
    		updated_max_guests = host.max_guests - num_of_guests
    		host.max_guests = updated_max_guests > 0 ? updated_max_guests : 0
    	end
    else
      host.max_guests = 0
    end
    host.save
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
