Rails.application.routes.draw do
  get "semesters/index"
  root "home#index"
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "users/new"
  get "up" => "rails/health#show", as: :rails_health_check
  get "/home", to: "home#index"
  get "signup", to: "users#new"
  resources :users, except: [ :new ]
  get "login",  to: "sessions#new"
  post "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "semesters", to: "semesters#index"
  post "semesters", to: "semesters#create"
end
