class Region < ActiveRecord::Base
  attr_accessible :name
  belongs_to :country
  has_many :cities, :through => :region_cities
end
