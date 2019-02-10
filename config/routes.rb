ZikaronBasalon::Application.routes.draw do
  mount RailsAdmin::Engine => '/webadmin', as: 'rails_admin'
  post 'webhook', :to => 'webhooks#webhook'

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/  do

    # Add support for Mailpreview
    if Rails.env.development?
      mount MailPreview => 'mail_view'
    end

    get 'my-profile', :to => 'users#profile'

    devise_for :users, controllers: { registrations: "registrations" } do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end

    resources :cities do
    end

    get 'cities/autocomplete_city' => 'cities#autocomplete_city'
    get 'cities/autocomplete_country' => 'cities#autocomplete_country'

    resources :managers do
      post :remove_city, on: :member
      get :export_hosts, on: :member
      get :export_witnesses, on: :member
      get :export_guests, on: :member
    end


    resources :regions do
      member do
        put :add_city
        patch :add_city
        get :remove_city
      end
    end

    resources :guests
    resources :sessions, only: [:new, :create]
    resources :users, only: [:new] do
      put :assignrole, on: :member
    end
    resources :witnesses do
      get :assign, on: :member
      get :unassign, on: :member
      resources :comments
    end

    match 'signup', :to => 'users#new', as: :signup, :via => [:get, :post, :delete, :put]
    match 'logout', :to => 'sessions#destroy', as: :logout, :via => [:get, :post, :delete, :put]

    resources :hosts do
      resources :comments
    end

    resources :invites, only: [:create, :update, :destroy]

    match "pages/home", :to => 'pages#home', as: :host_search, :via => [:get, :post, :delete, :put]
    match "pages/host_register_link", :to => 'pages#host_register_link', as: :host_register_link, :via => [:get, :post, :delete, :put]
    get "pages/privacy_policy"
    get "pages/welcome"
    root :to => 'pages#welcome'
  end
end
