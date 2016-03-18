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
    hosts = paginate(hosts, page)
    hosts
   end

   def get_witnesses(page, filter, query, sort)
    sort ||= 'created_at'
    witnesses = Witness.includes(:city, :host).order(sort + " desc").where(filter)
    witnesses = witnesses.where(:city_id => cities.pluck(:id)) if !user.admin?
    witnesses = witnesses.select{ |w| w.full_name.include?(query) } if query.present?
    witnesses = paginate(witnesses, page)
    witnesses
   end

  def city_name=(name)
  	city = City.find_or_create_by_name(name) if name.present?
  	self.cities.push(city)
  end

  def paginate(arr_name, page)
    unless arr_name.kind_of?(Array)
      arr_name = arr_name.page(page).per(20)
    else
      arr_name = Kaminari.paginate_array(arr_name).page(page).per(20)
    end
    arr_name
  end
end

