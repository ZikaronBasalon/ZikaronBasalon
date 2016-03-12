class City < ActiveRecord::Base
  attr_accessible :name, :region_id

  belongs_to :region
  has_many :community_leaderships
  has_many :managers, :through => :community_leaderships
  has_many :hosts
  has_many :witnesses

  def self.without_managers
  	cities = []
  	City.all.each do |c|
  		cities.push(c) if c.managers.count === 0
  	end
  	cities
  end

end
