Rails.application.routes.draw do
  resources :categories
  resources :restaurants
  devise_for :users
  root to: 'pages#index'
end
