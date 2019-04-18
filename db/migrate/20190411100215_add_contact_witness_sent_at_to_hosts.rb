# frozen_string_literal: true

class AddContactWitnessSentAtToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :contact_witness_sent_at, :datetime
  end
end
