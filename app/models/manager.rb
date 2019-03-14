# == Schema Information
#
# Table name: managers
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  temp_email   :string(255)
#  concept      :string(255)
#  witness_only :boolean          default(FALSE)
#

class Manager < ActiveRecord::Base
  has_paper_trail
  include CitiesHelper
  include ApplicationHelper

  has_many :community_leaderships
  has_many :cities, :through => :community_leaderships
  has_many :hosts, :through => :cities
  has_many :witnesses, :through => :cities
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user

 	attr_accessible :temp_email, :user_attributes, :concept
 	attr_accessor :city_name
	validates_uniqueness_of :temp_email

  def get_hosts(current_user, is_paging, page, filter, query, sort, has_manager, has_survivor, is_red, is_org, language, in_future, has_invites,
                  reverse_ordering, cities, country_id, region_id)

    city_ids = nil
    if region_id.present? || current_user.simple_admin?
      city_ids = cities.map {|c| c[:id] }
    end
    filter[:received_registration_mail] = true if current_user.simple_admin?

    hosts = Host.includes(:city, :user, :witness, :invites)
    hosts = hosts.where(filter)
    hosts = hosts.where(city_id: city_ids) if city_ids != nil && !user.sub_admin?
    hosts = hosts.where(:active => true) unless user.admin? && !user.current_year_admin?

    # add specific host filters (replaces host_in_filter)
    hosts = add_filters_to_hosts(hosts, query, has_manager, has_survivor, is_red, is_org, language, in_future, has_invites)

    # sort
    sort = 'hosts.created_at' if sort.blank? || sort == 'created_at'
    if sort == 'city'
      hosts = hosts.joins(:city)
      sort = 'cities.name'
    end
    sort_order = !reverse_ordering.to_i.zero? ? " desc" : " asc"
    hosts = hosts.order(sort + sort_order)

    # do paging if paging is requested
    hosts_count = nil
    if is_paging
      hosts = hosts.paginate(:page => page || 1, :per_page => 20)
      hosts_count = hosts.count
    end

    # hosts = hosts.select{ |h| host_in_filter(h, query, has_manager, has_survivor, is_org, language, in_future, has_invites) }


    return hosts, hosts_count
  end

  def get_witnesses(is_paging, page, filter, query, sort, has_manager, has_host, language)
    witnesses = Witness.includes(:city, :host)

    # sort
    sort = 'witnesses.created_at' if sort.blank? || sort == 'created_at'
    if sort == 'city.name'
      witnesses = witnesses.joins(:city)
      sort = 'cities.name'
    end
    sort_order = " desc"
    witnesses = witnesses.order(sort + sort_order)

    witnesses = witnesses.where(filter)
    witnesses = witnesses.where("LOWER(full_name) LIKE LOWER(?)", "%#{query.downcase}%") if query.present?
    if has_host.present?
      if has_host === 'true'
        witnesses = witnesses.where("host_id IS NOT NULL")
      elsif has_host === 'false'
        witnesses = witnesses.where(host_id: nil)
      end
    end
    witnesses = witnesses.where(:city_id => cities.pluck(:id)) if !user.admin? && !user.sub_admin?

    # further filter
    witnesses = add_filters_to_witnesses(witnesses, has_manager, language)

    # paginate witnesses
    if is_paging
      witnesses = witnesses.paginate(:page => page || 1, :per_page => 20)
      witnesses_count = witnesses.count
    end
    # witnesses = witnesses.select{ |w| witness_in_filter(w, has_manager, language) } if has_manager.present? || language.present?

    return witnesses, witnesses_count
  end

  def add_filters_to_witnesses(witnesses, has_manager, language)
    witnesses = filter_by_language(witnesses,'language', language)
    witnesses = filter_by_has_manager(witnesses, has_manager)
    witnesses
  end


  def get_cities(current_user, country_id, region_id)
    if user.admin? || user.sub_admin?
      @cities = City.includes(:managers).normalized.order('name desc')
    else
      @cities = City.includes(:managers).normalized.where(:id => cities.pluck(:id))
    end


    if user.simple_admin?
      communities = CommunityLeadership.where(manager_id: current_user.meta.id)
      community_city_ids = communities.map(&:city_id)
      if communities.size > 0
        @cities = @cities.where(id: community_city_ids)
      end
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
  	city = City.find_or_create_by!(name: name) if name.present?
  	self.cities.push(city)
  end

  def add_filters_to_hosts(hosts, query, has_manager, has_survivor, is_red, is_org, language, in_future, has_invites)
    # language
    if language.present?
      hosts = filter_by_language(hosts,'event_language', language)
    end
    # query by search
    if query.present?
      hosts = hosts.joins(:user, :city)
      hosts = filter_by_query(hosts, query)
    end
    # query by has_manager
    if has_manager.present?
      hosts = filter_by_has_manager(hosts, has_manager)
    end
    # if has survivor
    if has_survivor.present?
      if has_survivor == "true"
        hosts = hosts.where('witness_id IS NOT NULL')
      else
        hosts = hosts.where('witness_id IS NULL')
      end
    end
    # if is red (checkbox)
    if is_red == "true"
      hosts = hosts.where('witness_id IS NOT NULL AND contacted_witness = false')
    end
    # if is org (checkbox)
    if is_org == "true"
      hosts = hosts.where('org_name IS NOT NULL')
    end
    # if is in future (checkbox)
    if in_future == "true"
      hosts = hosts.where('event_date >= CAST(CURRENT_TIMESTAMP AS DATE)')
    end
    # if has invites
    if has_invites == "true"
      hosts = hosts.where('invites_pending_count > 0')
    end

    hosts
  end


end

