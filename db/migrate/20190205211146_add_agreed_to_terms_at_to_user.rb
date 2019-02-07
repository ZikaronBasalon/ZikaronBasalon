class AddAgreedToTermsAtToUser < ActiveRecord::Migration
  def change
    add_column :users, :agreed_to_terms_at, :datetime
  end
end
