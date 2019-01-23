# == Schema Information
#
# Table name: deleted_users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DeletedUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
