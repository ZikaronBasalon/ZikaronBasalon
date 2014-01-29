class Region < ActiveRecord::Base
  attr_accessible :name

  has_many :cities
  has_many :hosts, through: :cities
end
