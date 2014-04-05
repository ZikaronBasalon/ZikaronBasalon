class Host < ActiveRecord::Base
  attr_accessible :f_name, :l_name, :email, :phone, :address, :city_id, :max_guests,
   :survivor_needed, :free_text, :city_name, :status, :strangers, :contact,
   :survivor_details

  belongs_to :city

  validates_presence_of :city


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

