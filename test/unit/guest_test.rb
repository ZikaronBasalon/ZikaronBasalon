# == Schema Information
#
# Table name: guests
#
#  id             :integer          not null, primary key
#  email          :string(255)
#  phone          :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  name           :string(255)
#  num_of_friends :integer
#

require 'test_helper'

class GuestTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Guest.new.valid?
  end
end
