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
  		cities.push(c) if c.community_leaderships_count === 0
  	end
  	cities
  end

  def self.without_anyone
    cities = []
    City.all.each do |c|
      cities.push(c) if c.managers.empty? && c.hosts.empty? && c.witnesses.empty?
    end
    cities
  end
end
