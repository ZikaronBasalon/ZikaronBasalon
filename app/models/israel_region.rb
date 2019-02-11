# == Schema Information
#
# Table name: israel_regions
#
#  id          :integer          not null, primary key
#  identifier  :integer
#  napa_name   :string
#  lishka_name :string
#  created_at  :datetime
#  updated_at  :datetime
#

class IsraelRegion < ActiveRecord::Base
end
