class Witness < ActiveRecord::Base
  attr_accessible :address, :city_id, :concept, :email, :free_text, 
  							 :full_name, :language, :phone, :seminar_required, 
  							 :special_needs, :special_population, :stairs, :witness_type, :city_name

  belongs_to :city

  def city_name
  	city.try(:name)
  end

  def city_name=(name)
  	self.city = City.find_or_create_by_name(name) if name.present?
  end
end
