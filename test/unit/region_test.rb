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

require 'test_helper'

class RegionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Region.new.valid?
  end
end
