class CreateDeletedUsers < ActiveRecord::Migration
  def change
    create_table :deleted_users do |t|
      t.string :name
      t.string :email
      t.string :type

      t.timestamps
    end
  end
end
