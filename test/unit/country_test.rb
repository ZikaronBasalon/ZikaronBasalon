# == Schema Information
#
# Table name: countries
#
#  id             :integer          not null, primary key
#  iso            :string(255)
#  name           :string(255)
#  printable_name :string(255)
#  iso3           :string(255)
#  numcode        :integer
#  manager_id     :integer
#  regions_count  :integer          default(0)
#

require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
