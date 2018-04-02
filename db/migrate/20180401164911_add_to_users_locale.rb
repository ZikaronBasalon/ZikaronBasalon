class AddToUsersLocale < ActiveRecord::Migration
  def up
    add_column :users, :locale, :string
    User.all.each{|u|
      # If is a host not from Israel
      if u.meta_type == 'Host' && u.meta.country && u.meta.country.id != 97
        u.locale = 'en'
      else
        u.locale = 'he'
      end
      u.save!
    }
  end

  def down
    remove_column :users, :locale
  end
end
