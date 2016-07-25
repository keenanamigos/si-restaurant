Rails.application.routes.draw do
  resources :categories do
  	resources :restaurants
  end

  devise_for :users

  resources :users do
  	resources :restaurants 
  end
  
  root to: 'pages#index'
end
