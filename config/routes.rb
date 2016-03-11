ZikaronBasalon::Application.routes.draw do
  get "comments/index"

  get "comments/new"

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/  do
    devise_for :users, controllers: { registrations: "registrations" }
    resources :managers do
      post :remove_city, on: :member
    end

    resources :guests
    resources :sessions, only: [:new, :create]
    resources :users, only: [:new]
    resources :witnesses do
      get :assign, on: :member
      resources :comments
    end
    
    match 'signup', :to => 'users#new', as: :signup
    
    resources :hosts do
      resources :comments
    end

    get "pages/home"
    root :to => 'pages#home'
  end
end
