class Host < ActiveRecord::Base
  attr_accessible :address, :city_id, :max_guests, :survivor_needed, :free_text, 
  :city_name, :status, :strangers, :contact, :survivor_details, :lat, :lng, :event_date,
  :event_time, :evening_public, :hosted_before, :floor, :elevator, :org_name, :org_role,
  :event_language, :contacted, :phone, :witness_id, :user_attributes, :public_text, :concept,
  :received_registration_mail

  belongs_to :city
  has_one :witness
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user

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
end

