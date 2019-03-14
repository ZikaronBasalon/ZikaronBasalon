# == Schema Information
#
# Table name: community_leaderships
#
#  id         :integer          not null, primary key
#  manager_id :integer
#  city_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommunityLeadership < ActiveRecord::Base
  has_paper_trail
	attr_accessible :manager_id, :city_id
  belongs_to :manager
  belongs_to :city
  validates_uniqueness_of :manager_id, :scope => :city_id
  after_commit :update_community_leaderships_count

  def self.assign_manager(city, country_id)
  	country = Country.find(country_id)
  	# If country has a manager assigned and city doesnt have manager
  	if city && city.managers.count === 0 && country && country.manager
  		CommunityLeadership.create(city_id: city.id, manager_id: country.manager.id)
  	end
  end

  private

  def update_community_leaderships_count
    city.update_columns(community_leaderships_count: city.managers.length)
  end
end
