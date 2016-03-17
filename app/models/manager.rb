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

   def get_hosts(page, filter, query, sort)
    sort ||= 'created_at'
    hosts = Host.includes(:city, :user).order(sort + " desc").where(filter)
    hosts = hosts.where(:city_id => cities.pluck(:id)) if !user.admin?
    hosts = hosts.select{ |h| h.user && h.user.full_name.include?(query) } if query.present?
    hosts = Kaminari.paginate_array(hosts).page(page).per(20)
    hosts
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

