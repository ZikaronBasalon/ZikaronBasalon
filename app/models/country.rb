# == Schema Information
#
# Table name: countries
#
#  id             :integer          not null, primary key
#  iso            :string(255)
#  name           :string(255)
#  printable_name :string(255)
#  iso3           :string(255)
#  numcode        :integer
#  manager_id     :integer
#  regions_count  :integer          default(0)
#

class Country < ActiveRecord::Base
  has_paper_trail
  attr_accessible :iso, :name, :printable_name, :iso3, :numcode, :manager_id, :regions_count
  has_many :regions
  has_many :world_cities
  belongs_to :manager

  scope :normalized_search, ->(q) { where("name ILIKE '%#{q}%'") }


  # def to_s
  #   "#{printable_name}"
  # end

  rails_admin do
    # field :country do
    #   formatted_value{ bindings[:object].call_some_method }
    # end

    # field :country do
    #   country = bindings[:object]
    #   bindings[:view].link_to country.printable_name, RailsAdmin::Engine.routes.url_helpers.show_path(model_name: 'country', id: country.id)
    # end
    # configure :country do
    #   pretty_value do
    #     country = bindings[:object].country
    #     bindings[:view].link_to country.printable_name, RailsAdmin::Engine.routes.url_helpers.show_path(model_name: 'country', id: country.id)
    #   end
    #   export_value do
    #     country = bindings[:object].country
    #     country.printable_name
    #   end
    # end
  end

end
