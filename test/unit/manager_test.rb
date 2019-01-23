# == Schema Information
#
# Table name: managers
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  temp_email   :string(255)
#  concept      :string(255)
#  witness_only :boolean          default(FALSE)
#

require 'test_helper'

class ManagerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
