Rails.application.routes.draw do
  get 'home/index'
  resources :categories
  resources :items
  resources :reviews
  resources :stores
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
