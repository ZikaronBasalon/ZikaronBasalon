class Manager < ActiveRecord::Base
  has_many :community_leaderships
  has_many :cities, :through => :community_leaderships
  has_many :hosts, :through => :cities
  has_one :user, as: :meta, dependent: :destroy

 	attr_accessible :temp_email
 	attr_accessor :city_name

 	 validates_uniqueness_of :temp_email

  def city_name=(name)
  	city = City.find_or_create_by_name(name) if name.present?
  	self.cities.push(city)
  end
end
