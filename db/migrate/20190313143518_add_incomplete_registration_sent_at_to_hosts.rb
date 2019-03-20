# frozen_string_literal: true

class AddIncompleteRegistrationSentAtToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :incomplete_registration_sent_at, :datetime
  end
end
