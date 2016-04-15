class Host < ActiveRecord::Base
  attr_accessible :address, :city_id, :max_guests, :survivor_needed, :free_text, 
  :city_name, :status, :strangers, :contact, :survivor_details, :lat, :lng, :event_date,
  :event_time, :evening_public, :hosted_before, :floor, :elevator, :org_name, :org_role,
  :event_language, :contacted, :phone, :witness_id, :user_attributes, :public_text, :concept,
  :received_registration_mail, :contacted_witness, :country_id, :assignment_time

  attr_accessor :available_places

  belongs_to :city
  belongs_to :country
  has_one :witness
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  has_many :comments, as: :commentable
  has_many :invites

  after_update :assign_manager_by_country
  before_destroy :cancel_invites_and_assigned_witnesses


  def event_date 
    read_attribute(:event_date) || Date.parse("4-5-2016")
  end


  def city_name
  	city.try(:name)
  end

  def city_name=(name)
  	self.city = City.find_or_create_by_name(name) if name.present?
  end

  def region_name
  	city.try(:region).try(:name)
  end

  def available_places
    a_places = invites.inject(max_guests) { |sum, invite| 
      invite.confirmed.nil? ? sum : sum - (invite.plus_ones.to_i + 1)
    }
    return a_places || 0 
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
      return !['english', 'hebrew', 'arabic', 'frech', 'russian'].include?(event_language)
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
      ManagerMailer.assignment_cancelled(id, witness.id).deliver
    end
  end
end

