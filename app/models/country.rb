# == Schema Information
#
# Table name: countries
#
#  id             :integer          not null, primary key
#  iso            :string(255)
#  name           :string(255)
#  printable_name :string(255)
#  iso3           :string(255)
#  numcode        :integer
#  manager_id     :integer
#  regions_count  :integer          default(0)
#

class Country < ActiveRecord::Base
  attr_accessible :iso, :name, :printable_name, :iso3, :numcode, :manager_id, :regions_count
  has_many :regions
  belongs_to :manager
end
