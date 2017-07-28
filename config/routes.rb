Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'singup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
  
  resources :item, only: [:new]
end
