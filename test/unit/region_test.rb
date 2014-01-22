require 'test_helper'

class RegionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Region.new.valid?
  end
end
