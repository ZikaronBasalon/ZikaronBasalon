class AddHowBroughtToWitnesses < ActiveRecord::Migration
  def change
    add_column :witnesses, :how_brought, :string
  end
end
