RailsAdmin.config do |config|
  config.parent_controller = '::ApplicationController'
  I18n.locale = :en

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method do
    current_user
  end
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method { current_admin }
  # config.current_user_method(&:current_admin)

  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method { current_admin } # auto-generated

  config.authorize_with do |controller|
    redirect_to Rails.application.routes.url_helpers.new_user_session_path unless current_user.try(:admin?)
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
    impersonate
  end
end
