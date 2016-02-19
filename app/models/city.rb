class City < ActiveRecord::Base
  attr_accessible :name, :region_id

  belongs_to :region
  has_many :community_leaderships
  has_many :managers, :through => :community_leaderships
end
