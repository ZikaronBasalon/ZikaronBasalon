# frozen_string_literal: true

class ChangeDefaultHostedBeforeToNull < ActiveRecord::Migration
  def change
    change_column_default :hosts, :hosted_before, nil
  end
end
