class Manager < ActiveRecord::Base
  has_many :community_leaderships
  has_many :cities, :through => :community_leaderships
  has_many :hosts, :through => :cities
  has_many :witnesses, :through => :cities
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user

 	attr_accessible :temp_email, :user_attributes
 	attr_accessor :city_name

 	 validates_uniqueness_of :temp_email

   def get_hosts(page, filter)
    if user.admin?
      Host.includes(:city).page(page).per(20).where(filter).order("created_at desc")
    else 
      Host.includes(:city).page(page).per(20).where(:city_id => cities.pluck(:id)).where(filter).order("created_at desc")
    end
   end

   def get_witnesses(page, filter)
    if user.admin?
      Witness.page(page).per(20).where(filter).order("created_at desc")
    else 
      Witness.page(page).per(20).where(:city_id => cities.pluck(:id)).where(filter).order("created_at desc")
    end
   end

  def city_name=(name)
  	city = City.find_or_create_by_name(name) if name.present?
  	self.cities.push(city)
  end
end
