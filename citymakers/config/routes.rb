Rails.application.routes.draw do
  resources :reviews

  devise_for :users

  root to: 'home#index'

  get 'home/contact', as: :contact

  get '/search', to: 'city_makers#search'

  resources :city_makers, :categories
end
