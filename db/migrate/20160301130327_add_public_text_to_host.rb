class AddPublicTextToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :public_text, :text
  end
end
