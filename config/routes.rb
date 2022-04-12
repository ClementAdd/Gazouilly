Rails.application.routes.draw do
  resources :posts
  resources :hashtags
  root to: 'tweets#index'
end
