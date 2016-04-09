class Country < ActiveRecord::Base
  attr_accessible :iso, :name, :printable_name, :iso3, :numcode, :manager_id

  belongs_to :manager
end
