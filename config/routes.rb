Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :hashtags
  root to: 'tweets#index'
end
