# == Schema Information
#
# Table name: cities
#
#  id                          :integer          not null, primary key
#  name                        :string(255)
#  region_id                   :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  manager_email               :string(255)
#  placeid                     :string(255)
#  name_en                     :string(255)
#  name_he                     :string(255)
#  community_leaderships_count :integer          default(0)
#  israel_city_id              :integer
#

class City < ActiveRecord::Base
  has_paper_trail
  attr_accessible :name, :region_id, :community_leaderships_count, :name_he, :name_en, :israel_city_id

  belongs_to :region
  belongs_to :israel_city
  has_many :community_leaderships
  has_many :managers, :through => :community_leaderships
  has_many :hosts
  has_many :witnesses

  scope :normalized, -> { where.not(israel_city_id: nil) }

  def self.without_managers
  	cities = []
  	City.all.each do |c|
  		cities.push(c) if c.community_leaderships_count === 0
  	end
  	cities
  end

  def self.without_anyone
    cities = []
    City.all.each do |c|
      cities.push(c) if c.managers.empty? && c.hosts.empty? && c.witnesses.empty?
    end
    cities
  end
end
