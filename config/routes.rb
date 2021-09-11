Rails.application.routes.draw do
  resources :ratings, only: [:index, :show]
  resources :genres, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :reviews
  resources :favorites
  resources :programs
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
