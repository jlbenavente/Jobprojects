Rails.application.routes.draw do
  resources :comments
  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }
  root to: 'joboffers#index'
  get 'users/show'

  resources :joboffers
  end
  