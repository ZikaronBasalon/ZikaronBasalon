ZikaronBasalon::Application.routes.draw do
  

  resources :managers


  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/  do
    match "hosts/send_request", :to => 'hosts#send_request'
    match "hosts/search", :to => 'hosts#search'
    devise_for :users, controllers: { registrations: "registrations" }
    resources :guests
    resources :cities
    resources :sessions, only: [:new,:create]
    resources :users, only: [:new]
    resources :managers
    match 'sessions/signin',  :to => 'sessions#new', as: :signin
    match 'signup', :to => 'users#new', as: :signup
    resources :invites do
      member do
        get :reject
      end
    end

    resources :hosts do
      member do
        get :success
      end
    end

    resources :regions

    get "pages/home"
    root :to => 'pages#home'
  end
end
