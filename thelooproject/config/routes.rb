Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :categories

  devise_for :users
  root to: 'home#index'
  get '/search', to: 'loos#search'
  get '/about', to: 'home#about'
  resources :loos
end
