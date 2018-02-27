class Region < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :country_id
  validates :name, :presence => true
  validates :country_id, :presence => true
  belongs_to :country
  has_many :cities
end
