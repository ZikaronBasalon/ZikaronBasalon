class AddTimesToWitness < ActiveRecord::Migration
  def change
    add_column :witnesses, :can_morning, :boolean
    add_column :witnesses, :can_afternoon, :boolean
    add_column :witnesses, :can_evening, :boolean
    add_column :witnesses, :free_on_day, :boolean
  end
end
