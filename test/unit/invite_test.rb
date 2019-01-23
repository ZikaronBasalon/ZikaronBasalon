# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  guest_id   :integer
#  host_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  confirmed  :boolean          default(FALSE)
#  plus_ones  :integer          default(0)
#

require 'test_helper'

class InviteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
