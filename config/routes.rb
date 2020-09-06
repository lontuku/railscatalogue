Rails.application.routes.draw do
  get 'admin/storeAdmin'
  get 'home/index'
  resources :categories
  resources :items
  resources :reviews
  resources :stores do
    member do
      patch 'toggle_state' 
    end 
  end
  #devise_for :users
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
