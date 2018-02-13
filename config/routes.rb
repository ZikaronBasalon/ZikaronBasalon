ZikaronBasalon::Application.routes.draw do
  post 'webhook', :to => 'webhooks#webhook'

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/  do
    get 'my-profile', :to => 'users#profile'

    devise_for :users, controllers: { registrations: "registrations" }
    resources :managers do
      post :remove_city, on: :member
      get :export_hosts, on: :member
      get :export_witnesses, on: :member
      get :export_guests, on: :member
    end


    resources :regions

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
    
    match 'signup', :to => 'users#new', as: :signup
    
    resources :hosts do
      resources :comments
    end

    resources :invites, only: [:create, :update, :destroy]
    
    match "pages/home", :to => 'pages#home', as: :host_search
    get "pages/privacy_policy"
    get "pages/welcome"
    root :to => 'pages#welcome'
  end
end
