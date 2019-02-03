# == Schema Information
#
# Table name: israel_cities
#
#  id               :integer          not null, primary key
#  city_identifier  :integer
#  city_name_he     :string(255)
#  city_name_en     :string(255)
#  city_id          :integer
#  region_id        :integer
#  israel_region_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class IsraelCity < ActiveRecord::Base
  belongs_to :city
  belongs_to :region
  belongs_to :israel_region

  def self.city_list
    IsraelCity.where.not(city_id:nil).pluck(:city_id, :city_name_he).reduce([]){|h, (city_id, city_name)| h.push(city_id: city_id, name: city_name) }
  end

  def self.main_city_list
    City.where(id: IsraelCity.where.not(city_id:nil).pluck(:city_id))
  end
end
