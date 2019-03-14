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
#  country_id                  :integer
#  world_city_id               :integer
#

class City < ActiveRecord::Base
  has_paper_trail
  attr_accessible :name, :region_id, :community_leaderships_count, :name_he, :name_en, :israel_city_id, :manager_email, :placeid, :country_id, :world_city_id, :community_leadership_ids, :manager_ids, :host_ids, :witness_ids

  belongs_to :region
  belongs_to :country
  belongs_to :israel_city
  belongs_to :world_city
  has_many :community_leaderships
  has_many :managers, :through => :community_leaderships
  has_many :hosts
  has_many :witnesses

  def self.normalized_search(q, country_id, chul = false)
    if chul
      where.not(country_id: 97).where("name ILIKE '%#{q}%'")
    else
      where(country_id: country_id).where("name ILIKE '%#{q}%'")
    end
  end
  scope :normalized, -> { where("israel_city_id IS NOT NULL OR world_city_id IS NOT NULL") }
  scope :without_managers, -> { where(community_leaderships_count: 0) }

  scope :relevant_cities, -> { where(id: (Witness.where.not(city_id: nil).pluck(:city_id) + Host.where.not(city_id: nil).pluck(:city_id)).uniq) }

  def self.not_on_the_list_names
    [I18n.t('shared.not_on_the_list', locale: :he), I18n.t('shared.not_on_the_list', locale: :en)].compact
  end

  def self.without_anyone
    cities = []
    City.all.each do |c|
      cities.push(c) if c.managers.empty? && c.hosts.empty? && c.witnesses.empty?
    end
    cities
  end
end
