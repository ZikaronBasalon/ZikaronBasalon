class CreateUserMeta < ActiveRecord::Migration
  def change
    create_table :user_meta do |t|
      t.references :user
      t.integer :meta_id
      t.string :meta_type
      t.timestamps
    end
    add_index :user_meta, :user_id
    add_index :user_meta, [:meta_id, :meta_type]
    add_index :user_meta, :meta_id
    add_index :user_meta, :meta_type

    Host.all.each { |host| UserMeta.create(meta_id: host.id, meta_type: 'Host', user_id: host.user.id) }
    Guest.all.each { |guest| UserMeta.create(meta_id: guest.id, meta_type: 'Guest', user_id: guest.user.id) }
  end
end
