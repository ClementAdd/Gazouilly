Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :users
  resources :posts
  resources :hashtags
  root to: 'home#index'
end
