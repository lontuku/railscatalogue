Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'admin/storeAdmin'
  get 'home/index'
  get 'home/stats'
  get 'home/landing', to: 'home#landing'
  resources :categories
  resources :items
  resources :reviews
  post 'indexup', to: 'instagram_api#indexup'
  get 'ver', to: 'instagram_api#ver'
  resources :stores do
    resources :likes
    member do
      patch 'toggle_state' 
    end 
  end
  #devise_for :users
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
                      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#landing'
end
