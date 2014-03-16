class Invite < ActiveRecord::Base
  attr_accessible :guest_id, :host_id

  has_one :guest
  has_one :host
end
