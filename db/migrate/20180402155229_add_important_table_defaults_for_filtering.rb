class AddImportantTableDefaultsForFiltering < ActiveRecord::Migration
  def up
    # Defaults needed for filtering in hosts - event_language
    change_column_default :hosts, :event_language, 'hebrew'
    # Apply defaults for hosts retrospectively - event_language
    Host.where("event_language IS NULL").update_all("event_language = 'hebrew'")

    # Defaults needed for filtering in hosts - survivor_needed
    change_column_default :hosts, :survivor_needed, false
    # Apply defaults for hosts retrospectively - survivor_needed
    Host.where("survivor_needed IS NULL").update_all("survivor_needed = false")

    # Defaults needed for filtering in hosts - received_registration_mail
    change_column_default :hosts, :received_registration_mail, false
    # Apply defaults for hosts retrospectively - received_registration_mail
    Host.where("received_registration_mail IS NULL").update_all("received_registration_mail = false")

    # Defaults needed for filtering in witnesses - language
    change_column_default :witnesses, :language, 'hebrew'
    # Apply defaults for witnesses retrospectively - language
    Witness.where("language IS NULL").update_all("language = 'hebrew'")

    # Defaults needed for filtering in witnesses - stairs
    change_column_default :witnesses, :stairs, false
    # Apply defaults for witnesses retrospectively - stairs
    Witness.where("stairs IS NULL").update_all("stairs = false")

    # Defaults needed for filtering in witnesses - special_population
    change_column_default :witnesses, :special_population, false
    # Apply defaults for witnesses retrospectively - special_population
    Witness.where("special_population IS NULL").update_all("special_population = false")
  end

  def down
  end
end
