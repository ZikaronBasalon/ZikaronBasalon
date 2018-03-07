class Region < ActiveRecord::Base
  OTHER_REGION_NAME = 'Other\אחר'
  attr_accessible :name
  attr_accessible :country_id
  validates :name, :presence => true
  validates :country_id, :presence => true
  belongs_to :country
  has_many :cities
end
