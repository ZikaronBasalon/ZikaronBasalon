# == Schema Information
#
# Table name: witnesses
#
#  id                    :integer          not null, primary key
#  full_name             :string(255)
#  address               :string(255)
#  city_id               :integer
#  witness_type          :string(255)
#  language              :string(255)      default("hebrew")
#  email                 :string(255)
#  phone                 :string(255)
#  stairs                :boolean          default(FALSE)
#  special_needs         :text
#  seminar_required      :boolean
#  free_text             :text
#  special_population    :boolean          default(FALSE)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  contacted             :boolean          default(FALSE)
#  contacted_by_host     :boolean          default(FALSE)
#  available_for_teaming :boolean          default(TRUE)
#  host_id               :integer
#  concept               :string(255)
#  can_morning           :boolean
#  can_afternoon         :boolean
#  can_evening           :boolean
#  free_on_day           :boolean
#  contact_name          :string(255)
#  contact_phone         :string(255)
#  external_assignment   :boolean          default(FALSE)
#  additional_phone      :string(255)
#  available_day1        :boolean
#  available_day2        :boolean
#  available_day3        :boolean
#  available_day4        :boolean
#  available_day5        :boolean
#  available_day6        :boolean
#  archived              :boolean          default(FALSE)
#  need_to_followup      :boolean          default(FALSE)
#  active_last_year      :boolean
#  available_day7        :boolean
#  available_day8        :boolean
#  available_day9        :boolean
#

class Witness < ActiveRecord::Base
  has_paper_trail
  attr_accessible :address, :city_id, :concept, :email, :free_text,
  							 :full_name, :language, :phone, :additional_phone, :seminar_required,
  							 :special_needs, :special_population, :stairs, :witness_type, :city_name,
                 :contacted, :contacted_by_host, :available_for_teaming, :can_morning,
                 :can_afternoon, :can_evening, :free_on_day, :contact_name, :contact_phone,
                 :host_id, :host, :external_assignment, :available_day1, :available_day2,
                 :available_day3, :available_day4, :available_day5, :available_day6, :available_day7, :available_day8, :available_day9,
                 :archived, :need_to_followup, :active_last_year, :how_brought

  belongs_to :city
  has_one :host
  has_many :comments, as: :commentable

  validates_uniqueness_of :host_id, :allow_nil => true
  validates_uniqueness_of :phone, :on => :create

  before_validation :normalize_phone

  default_scope { includes(:city) }

  def city_name
  	city.try(:name)
  end

  def city_name=(name)
  	self.city = City.find_or_create_by!(name: name) if name.present?
  end

  def has_host
    !host.nil?
  end

  def is_vetran
    concept && concept === 'vetrans'
  end

  def in_language_filter(lang)
    return true if lang.blank?

    if lang != 'other'
      return language == lang
    else
      return !['english', 'hebrew', 'arabic', 'frech', 'russian', 'spanish'].include?(language)
    end
  end

  def self.to_csv(witnesses, options = {})
    CSV.generate(options) do |csv|
      csv << ['ID', 'שם', 'עיר', 'כתובת', 'טלפון', 'טלפון נוסף', 'מייל', 'שפה',
              'צרכים מיוחדים', 'אוכלוסיה מיוחדת', 'יכול לעלות מדרגות',
              'סוג', 'שם איש קשר וקרבה לעד', 'טלפון איש קשר', 'מארח', 'ציוות חיצוני']
      witnesses.each do |witness|
        row = [
          witness.id,
          witness.full_name,
          witness.city.try(:name),
          witness.address,
          witness.phone,
          witness.additional_phone,
          witness.email,
          witness.language,
          witness.special_needs ? 'כן' : 'לא',
          witness.special_population ? 'כן' : 'לא',
          witness.stairs ? 'כן' : 'לא',
          witness.witness_type,
          witness.contact_name,
          witness.contact_phone,
          witness.host_id,
          witness.external_assignment ? 'כן' : 'לא'
        ]
        csv << row
      end
    end
  end

  def normalize_phone
    self.phone = phone.gsub("-", "")
  end
end
