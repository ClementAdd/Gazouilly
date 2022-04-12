Rails.application.routes.draw do
  resources :hashtags
  root to: 'tweets#index'
end
