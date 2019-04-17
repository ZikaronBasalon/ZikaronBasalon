# frozen_string_literal: true

class ChangeDefaultSurviverNeededToNull < ActiveRecord::Migration
  def change
    change_column_default :hosts, :survivor_needed, nil
  end
end
