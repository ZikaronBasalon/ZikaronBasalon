ZikaronBasalon::Application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/  do
    match "hosts/send_request", :to => 'hosts#send_request'
    match "hosts/search", :to => 'hosts#search'

    resources :guests
    resources :cities
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
