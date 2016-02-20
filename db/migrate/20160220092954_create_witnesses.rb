class CreateWitnesses < ActiveRecord::Migration
  def change
    create_table :witnesses do |t|
      t.string :full_name
      t.string :address
      t.integer :city_id
      t.string :witness_type
      t.string :language
      t.string :email
      t.string :phone
      t.boolean :stairs
      t.text :special_needs
      t.boolean :seminar_required
      t.boolean :concept
      t.text :free_text
      t.boolean :special_population

      t.timestamps
    end
  end
end
