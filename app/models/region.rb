# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :integer
#

class Region < ActiveRecord::Base
  has_paper_trail
  OTHER_REGION_NAME = 'Other\אחר'
  attr_accessible :name
  attr_accessible :country_id
  validates :name, :presence => true
  validates :country_id, :presence => true
  belongs_to :country, :counter_cache => true
  belongs_to :israel_city
  has_many :cities
end
