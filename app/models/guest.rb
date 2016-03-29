class Guest < ActiveRecord::Base
	attr_accessible :user_attributes, :phone
	
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  has_many :invites
end
