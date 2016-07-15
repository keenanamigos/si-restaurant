Rails.application.routes.draw do
  resources :restaurants
  resources :categories
  devise_for :users
  root to: 'pages#index'
end
