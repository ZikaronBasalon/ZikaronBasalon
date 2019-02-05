# == Schema Information
#
# Table name: world_cities
#
#  id              :integer          not null, primary key
#  city_name       :string
#  city_ascii_name :string
#  lat             :float
#  lng             :float
#  country         :text
#  state           :text
#  internal_id     :integer
#  city_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class WorldCity < ActiveRecord::Base
  has_paper_trail
  belongs_to :city
end
