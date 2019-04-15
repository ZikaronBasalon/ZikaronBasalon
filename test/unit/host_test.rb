# == Schema Information
#
# Table name: hosts
#
#  id                              :integer          not null, primary key
#  address                         :string(255)
#  city_id                         :integer
#  max_guests                      :integer
#  free_text                       :text
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  strangers                       :boolean          default(TRUE)
#  status                          :text
#  contact                         :string(255)
#  survivor_details                :text
#  lat                             :float
#  lng                             :float
#  date                            :datetime
#  evening_public                  :boolean          default(TRUE)
#  hosted_before                   :boolean
#  event_date                      :date
#  event_time                      :string(255)
#  floor                           :integer
#  elevator                        :boolean
#  org_name                        :string(255)
#  org_role                        :string(255)
#  event_language                  :string(255)      default("hebrew")
#  contacted                       :boolean          default(FALSE)
#  phone                           :string(255)
#  survivor_needed                 :boolean          default(FALSE)
#  witness_id                      :integer
#  public_text                     :text
#  concept                         :string(255)
#  received_registration_mail      :boolean          default(FALSE)
#  contacted_witness               :boolean          default(FALSE)
#  country_id                      :integer
#  assignment_time                 :datetime
#  preparation_evening             :boolean          default(FALSE)
#  active                          :boolean          default(TRUE)
#  invites_pending_count           :integer          default(0)
#  invites_confirmed_count         :integer          default(0)
#  active_last_year                :boolean
#  preparation_wanted              :boolean
#  incomplete_registration_sent_at :datetime
#  contact_witness_sent_at         :datetime
#  name_of_city                    :string
#

require 'test_helper'

class HostTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Host.new.valid?
  end
end
