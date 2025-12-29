Rails.application.routes.draw do
  get "users/new"
  get "up" => "rails/health#show", as: :rails_health_check
  get "/home", to: "home#index"
  get "signup", to: "users#new"
  resources :users, except: [ :new ]
end
