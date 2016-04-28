class Witness < ActiveRecord::Base
  attr_accessible :address, :city_id, :concept, :email, :free_text, 
  							 :full_name, :language, :phone, :seminar_required, 
  							 :special_needs, :special_population, :stairs, :witness_type, :city_name,
                 :contacted, :contacted_by_host, :available_for_teaming, :can_morning,
                 :can_afternoon, :can_evening, :free_on_day, :contact_name, :contact_phone,
                 :host_id, :external_assignment

  belongs_to :city
  belongs_to :host
  has_many :comments, as: :commentable

  validates_uniqueness_of :host_id, :allow_nil => true
  validates_uniqueness_of :phone, :on => :create

  default_scope { includes(:city) }

  def city_name
  	city.try(:name)
  end

  def city_name=(name)
  	self.city = City.find_or_create_by_name(name) if name.present?
  end

  def has_host
    !host.nil? || external_assignment
  end

  def in_language_filter(lang)
    return true if lang.blank?

    if lang != 'other'
      return language == lang
    else
      return !['english', 'hebrew', 'arabic', 'frech', 'russian', 'spanish'].include?(language)
    end
  end
end
