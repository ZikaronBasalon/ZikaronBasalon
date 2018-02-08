class AddNeedToFollowupToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :need_to_followup, :boolean, :default => false
  end
end
