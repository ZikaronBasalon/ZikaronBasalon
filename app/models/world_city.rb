# == Schema Information
#
# Table name: world_cities
#
#  id              :integer          not null, primary key
#  city_name       :string
#  city_ascii_name :string
#  lat             :float
#  lng             :float
#  country_name    :text
#  state           :text
#  internal_id     :integer
#  city_id         :integer
#  country_id      :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class WorldCity < ActiveRecord::Base
  has_paper_trail
  belongs_to :city
  belongs_to :country

  def to_s
    "#{country_name}"
  end

  rails_admin do
    configure :country do
      pretty_value do
        country = bindings[:object].country
        bindings[:view].link_to country.printable_name, RailsAdmin::Engine.routes.url_helpers.show_path(model_name: 'country', id: country.id)
      end
      export_value do
        country = bindings[:object].country
        country.printable_name
      end
    end
  end
end
