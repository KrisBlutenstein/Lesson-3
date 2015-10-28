Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :authentications, only: [:new, :create, :destroy]
end
