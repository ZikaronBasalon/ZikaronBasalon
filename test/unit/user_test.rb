# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  email                   :string(255)      default(""), not null
#  encrypted_password      :string(255)      default(""), not null
#  reset_password_token    :string(255)
#  reset_password_sent_at  :datetime
#  remember_created_at     :datetime
#  sign_in_count           :integer          default(0), not null
#  current_sign_in_at      :datetime
#  last_sign_in_at         :datetime
#  current_sign_in_ip      :string(255)
#  last_sign_in_ip         :string(255)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  full_name               :string(255)
#  phone                   :string(255)
#  admin                   :boolean          default(FALSE)
#  meta_id                 :integer
#  meta_type               :string(255)
#  sub_admin               :boolean          default(FALSE)
#  previous_meta_id        :integer
#  previous_meta_type      :string(255)
#  active_this_year        :boolean          default(TRUE)
#  current_year_admin      :boolean          default(FALSE)
#  locale                  :string(255)
#  agreed_to_terms_at      :datetime
#  subscribed_to_marketing :boolean
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
