Rails.application.routes.draw do
  get 'agreements/create'
  resources :comments
  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }
  root to: 'joboffers#index'
  get 'users/show'

  resources :agreements, only: :index
  resources :joboffers

  resources :joboffers, only: :show do
  	resources :agreements, only: :create
  end

  resources :joboffers, only: :show do
    resources :comments
  end


end
  