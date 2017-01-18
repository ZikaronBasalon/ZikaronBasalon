class Guest < ActiveRecord::Base
	attr_accessible :user_attributes, :phone, :year
	
  has_one :user_meta, as: :meta, dependent: :destroy
  has_one :user, through: :user_meta
  accepts_nested_attributes_for :user
  has_many :invites

  def self.to_csv(guests, options = {})
    CSV.generate(options) do |csv|
      csv << ['ID','שם','טלפון','מייל', 'מארח', 'סטטוס בקשה']
      guests.each do |guest|
        row = [
          guest.id,
          guest.user.try(:full_name),
          guest.phone,
          guest.user.try(:email),
          guest.invites.first.try(:host_id),
          guest.invites.first.try(:display_status)
        ]
        csv << row
      end
    end
  end
end
