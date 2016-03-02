class AddFieldsToWitness < ActiveRecord::Migration
  def change
  	add_column :witnesses, :contacted, :boolean, default: false
  	add_column :witnesses, :contacted_by_host, :boolean, default: false
  	add_column :witnesses, :available_for_teaming, :boolean, default: true
  	add_column :witnesses, :host_id, :integer
  end
end
