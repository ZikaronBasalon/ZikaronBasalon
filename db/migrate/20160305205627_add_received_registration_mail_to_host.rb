class AddReceivedRegistrationMailToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :received_registration_mail, :boolean, default: false
  end
end
