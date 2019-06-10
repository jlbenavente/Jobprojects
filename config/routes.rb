Rails.application.routes.draw do
  resources :comments
  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }
  root to: 'joboffers#index'
  get 'users/show'

  resources :joboffers

  resources :joboffers, only: :show do
  	resources :agreements, only: :create
  end
end
  