class CommunityLeadership < ActiveRecord::Base
	attr_accessible :manager_id, :city_id
  belongs_to :manager
  belongs_to :city
  validates_uniqueness_of :manager_id, :scope => :city_id

  def self.assign_manager(city, country_id)
  	country = Country.find(country_id)
  	# If country has a manager assigned and city doesnt have manager
  	if city && city.managers.count === 0 && country && country.manager
  		CommunityLeadership.create(city_id: city.id, manager_id: country.manager.id)
  	end
  end
end
