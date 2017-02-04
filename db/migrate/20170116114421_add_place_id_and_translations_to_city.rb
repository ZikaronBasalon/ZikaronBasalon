class AddPlaceIdAndTranslationsToCity < ActiveRecord::Migration
  def change
    add_column :cities, :placeid, :string
    add_column :cities, :name_en, :string
    add_column :cities, :name_he, :string
  end
end
