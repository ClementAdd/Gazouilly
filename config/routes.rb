Rails.application.routes.draw do
  get 'home/index'
  resources :users
  resources :posts
  resources :hashtags
  root to: 'home#index'
end
