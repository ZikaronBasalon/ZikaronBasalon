# == Schema Information
#
# Table name: community_leaderships
#
#  id         :integer          not null, primary key
#  manager_id :integer
#  city_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommunityLeadershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
