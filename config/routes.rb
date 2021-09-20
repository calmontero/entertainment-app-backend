Rails.application.routes.draw do
  resources :ratings, only: [:index, :show]
  resources :genres, only: [:index]
  resources :categories, only: [:index]
  resources :favorites, only: [:index, :show, :create]
  get "/users", to: "users#index"
  resources :reviews, only: [:index, :show, :create]
  resources :programs  

  resources :users, only: [:show] do
    # nested resource for profiles
    resources :profiles, only: [:show, :index, :create, :destroy]
  end

  # Login/Logout Session
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
