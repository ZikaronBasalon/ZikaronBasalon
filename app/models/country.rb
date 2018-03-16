class Country < ActiveRecord::Base
  attr_accessible :iso, :name, :printable_name, :iso3, :numcode, :manager_id, :regions_count
  has_many :regions
  belongs_to :manager
end
