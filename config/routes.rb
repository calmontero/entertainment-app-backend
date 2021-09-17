Rails.application.routes.draw do
  resources :ratings, only: [:index, :show]
  resources :genres, only: [:index]
  resources :categories, only: [:index]
  resources :favorites, only: [:index, :show]
  resources :profiles
  get "/users", to: "users#index"
  resources :reviews, only: [:index, :show, :create]
  resources :programs  

  # Login/Logout Session
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
