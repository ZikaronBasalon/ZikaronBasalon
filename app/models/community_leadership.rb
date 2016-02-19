class CommunityLeadership < ActiveRecord::Base
	attr_accessible :manager_id, :city_id
  belongs_to :manager
  belongs_to :city

  validates_uniqueness_of :manager_id, :scope => :city_id
end
