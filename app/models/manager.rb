class Manager < ActiveRecord::Base

  include CitiesHelper

  has_many :community_leaderships
  has_many :cities, :through => :community_leaderships
  has_many :hosts, :through => :cities
  has_many :witnesses, :through => :cities
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user

 	attr_accessible :temp_email, :user_attributes, :concept
 	attr_accessor :city_name
	validates_uniqueness_of :temp_email

  def get_hosts(page, filter, query, sort, has_manager, has_survivor, is_org, language, in_future, has_invites,
                reverse_ordering, cities, country_id, region_id)
    sort = 'created_at' if sort.blank?
    sort_order = !reverse_ordering.to_i.zero? ? " desc" : " asc"

    city_ids = nil
    if region_id.present?
      city_ids = cities.map {|c| c[:id] }
    end

    hosts = Host.includes(:city, :user, :witness).order(sort + sort_order)
    hosts = hosts.where(filter)
    hosts = hosts.where(city_id: city_ids) if city_ids != nil && !user.sub_admin? && !concept
    hosts = hosts.where(:active => true) unless user.admin? && !user.current_year_admin?
    hosts = hosts.where(concept: concept).select{ |h| h.has_witness } if concept

    # hosts = paginate(hosts, page) if page
    hosts = hosts.paginate(:page => page || 1, :per_page => 20)
    hosts_count = hosts.count
    hosts = hosts.select{ |h| host_in_filter(h, query, has_manager, has_survivor, is_org, language, in_future, has_invites) }


    return hosts, hosts_count
  end

  def get_witnesses(page, filter, query, sort, has_manager, has_host, language)
    sort = 'created_at' if sort.blank?
    witnesses = Witness.includes(:city, :host).order(sort + " desc").where(filter)
    witnesses = witnesses.where("LOWER(full_name) LIKE LOWER(?)", "%#{query.downcase}%") if query.present?
    if has_host.present?
      if has_host === 'true'
        witnesses = witnesses.where("host_id >= 0")
      elsif has_host === 'false'
        witnesses = witnesses.where(host_id: nil)
      end
    end
    witnesses = witnesses.where(:city_id => cities.pluck(:id)) if !user.admin? && !user.sub_admin? && !concept
    witnesses = witnesses.where(concept: concept) if concept
    witnesses = witnesses.paginate(:page => page || 1, :per_page => 20)
    witnesses_count = witnesses.count
    witnesses = witnesses.select{ |w| witness_in_filter(w, has_manager, language) } if has_manager.present? || language.present?

    return witnesses, witnesses_count
  end

  def get_cities(country_id, region_id)
  if user.admin? || user.sub_admin?
      @cities = City.includes(:managers).order('name desc')
    else
      @cities = City.includes(:managers).where(:id => cities.pluck(:id))
    end

    @cities = filter_cities(@cities, country_id, region_id)


    @cities.map{ |c| { id: c.id, name: c.name }}.sort_alphabetical_by{|c| c[:name] }
  end

  def get_countries
    @countries = Country.all
    @countries.map{ |c| { id: c.id, name: c.name }}.sort_alphabetical_by{|c| c[:name] }
  end

  def get_regions(country_id)
    @regions = Region.where(country_id: country_id)
    @regions.map{ |r| { id: r.id, name: r.name }}.sort_alphabetical_by{|r| r[:name] }
  end

  def city_name=(name)
  	city = City.find_or_create_by_name(name) if name.present?
  	self.cities.push(city)
  end

  def host_in_filter(host, query, has_manager, has_survivor, is_org, language, in_future, has_invites)
    in_filter = true
    in_filter = in_filter && host.in_language_filter(language)
    in_filter = in_filter && host.in_query(query)
    in_filter = in_filter && obj_has_manager(host, has_manager) if has_manager.present?
    in_filter = in_filter && host_has_witness(host, has_survivor) if has_survivor.present?
    in_filter = in_filter && !host.org_name.nil? if is_org === 'true'
    in_filter = in_filter && host.event_date >= Date.today if in_future ==='true'
    in_filter = in_filter && host.invites.present? && host.invites.where(:confirmed => false).present? if has_invites.present?
    in_filter
  end

  def witness_in_filter(w, has_manager, language)
    in_filter = true
    in_filter = in_filter && w.in_language_filter(language)
    in_filter = in_filter && obj_has_manager(w, has_manager) if has_manager.present?
    in_filter
  end

  def obj_has_manager(obj, has_manager)
    return false if obj.city.nil?
    if has_manager === "true"
      return obj.city.managers.count > 0
    else
      return obj.city.managers.count == 0
    end
  end

  def host_has_witness(h, has_witness)
    if has_witness === "true"
      return !h.witness.nil?
    else
      return h.witness.nil?
    end
  end




end

