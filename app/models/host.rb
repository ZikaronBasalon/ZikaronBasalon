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
#

class Host < ActiveRecord::Base
  has_paper_trail
  require 'csv'

  attr_accessible :address, :city_id, :max_guests, :survivor_needed, :free_text,  :invites_pending_count,
  :invites_confirmed_count, :city_name, :status, :strangers, :contact, :survivor_details, :lat, :lng, :event_date,
  :event_time, :evening_public, :hosted_before, :floor, :elevator, :org_name, :org_role,
  :event_language, :contacted, :preparation_evening, :phone, :witness_id, :user_attributes, :public_text, :concept,
  :received_registration_mail, :contacted_witness, :country_id, :assignment_time, :preparation_wanted, :date, :active, :active_last_year, :incomplete_registration_sent_at, :comment_ids, :invite_ids

  attr_accessor :available_places

  belongs_to :city
  belongs_to :country
  has_one :witness
  #Question: if destroy host, will this destroy it's user, even though it still has a guest?
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  has_many :comments, as: :commentable
  has_many :invites

  after_update :assign_manager_by_country
  before_destroy :cancel_invites_and_assigned_witnesses

  scope :incomplete_registration, -> { where.not(received_registration_mail: true) }

  def event_date
    (read_attribute(:event_date).presence || DateTime.parse("2019-05-01")).strftime('%Y-%m-%d')
  end

  def converted_time
    return nil if event_time.nil?

    begin
      zone = TZInfo::Country.get(country.iso).zone_names.first
      Time.parse(event_time).in_time_zone(zone).strftime("%H:%M")
    rescue
      Time.parse(event_time).strftime("%H:%M")
    end

  end


  def city_name
  	city.try(:name)
  end

  def region_name
  	city.try(:region).try(:name)
  end

  def available_places
    return 0 if max_guests.nil?
    return (max_guests - invites_confirmed_count - invites_pending_count) > 0 ? (max_guests - invites_confirmed_count - invites_pending_count) : 0
  end

  def assign_manager_by_country
    CommunityLeadership.assign_manager(self.city, self.country_id) if (self.country_id_changed? && self.country_id && self.city)
  end

  def has_witness
    !witness.nil?
  end

  def manager
    city.try(:managers).try(:first)
  end

  def in_language_filter(language)
    return true if language.blank?

    if language != 'other'
      return event_language == language
    else
      return !['english', 'hebrew', 'arabic', 'frech', 'russian', 'spanish'].include?(event_language)
    end
  end

  def in_query(q)
    return true if !q.present?
    (user && (user.full_name.include?(q) || user.email.downcase.include?(q.downcase))) ||
    (org_name && org_name.include?(q)) ||
    (city && city.name.include?(q)) ||
    (city && city.managers.count > 0 && city.managers.first.temp_email.downcase.include?(q.downcase))
  end

  def cancel_invites_and_assigned_witnesses
    invites.each do |invite|
      RequestMailer.request_rejected(invite.id, :he).deliver if !invite.rejected
      invite.destroy
    end

    if witness
      witness.update_attributes(host_id: nil)
      ManagerMailer.assignment_cancelled(id, witness.id, current_user).deliver
    end
  end

  def self.to_csv(hosts, options = {})
    CSV.generate(options) do |csv|
      csv << ['ID',
              'שם',
              'פעיל',
              'מדינה',
              'עיר',
              'כתובת',
              'טלפון',
              'מייל',
              'שפה',
              'צריך איש עדות',
              'צוות איש עדות',
              'מתי צוות',
              'איש העדות',
              'נוצר קשר עם איש עדות',
              'שם ארגון',
              'מספר אורחים מקסימלי',
              'טקסט חופשי',
              'זרים',
              'ערב ציבורי',
              'אירח בעבר',
              'תאריך אירוע',
              'שעת אירוע',
              'קומה',
              'מעלית',
              'תפקיד בארגון',
              'הערות לאורחים',
              'קונספט',
              'סיים הרשמה',
              'ערב הכנה',
              'מספר הזמנות ממתינות',
              'מספר הזמנות שאושרו'
      ]
      hosts.each do |host|
        row = [
            host.id,
            host.user.try(:full_name),
            host.active ? 'כן' : 'לא',
            host.country.try(:name),
            host.city.try(:name),
            host.address,
            host.phone,
            host.user.try(:email),
            host.event_language,
            host.survivor_needed ? 'כן' : 'לא',
            host.has_witness ? 'כן' : 'לא',
            host.assignment_time,
            host.witness.try(:full_name),
            host.contacted_witness ? 'כן' : 'לא',
            host.org_name,
            host.max_guests,
            host.free_text,
            host.strangers ? 'כן' : 'לא',
            host.evening_public ? 'כן' : 'לא',
            host.hosted_before ? 'כן' : 'לא',
            host.event_date,
            host.converted_time,
            host.floor,
            host.elevator ? 'כן' : 'לא',
            host.org_role,
            host.public_text,
            host.concept,
            host.received_registration_mail ? 'כן' : 'לא',
            host.preparation_evening ? 'כן' : 'לא',
            host.invites_pending_count,
            host.invites_confirmed_count
        ]
        csv << row
      end
    end
  end
end

