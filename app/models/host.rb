class Host < ActiveRecord::Base
  attr_accessible :f_name, :l_name, :email, :phone, :address, :city_id, :max_guests,
   :survivor_needed, :free_text, :city_name, :status, :strangers, :contact,
   :survivor_details, :lat, :lng, :date

  belongs_to :city

  validates_presence_of :f_name, :email, :phone
  validate :valid_address

  before_save :default_max_guests

  def valid_address
    if lat.nil? || lng.nil?
      errors.add(:address, "invalid")
    end
  end

  def full_name
    f_name + " " + l_name
  rescue
    f_name
  end

  def date 
    read_attribute(:date) || Date.parse("15-4-2015")
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

  def authenticate(s_phone)
    phone.tr("-","") == s_phone.tr("-","")
  end

  private

  def default_max_guests
    if self.max_guests.nil?
      self.max_guests = 9999
    end
  end

end

