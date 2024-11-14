Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  get 'about', to: 'about#index'
  resources :users, only: [:show, :index, :edit, :update]
  resources :books
end