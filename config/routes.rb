ZikaronBasalon::Application.routes.draw do
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
    end
    match 'signup', :to => 'users#new', as: :signup
    resources :hosts 

    get "pages/home"
    root :to => 'pages#home'
  end
end
