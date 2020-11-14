Rails.application.routes.draw do
  get "items/index"
  get "items/new"
  get "items/create"
  root to: "items#index"
  devise_for :users
  resources :items
  resource :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
