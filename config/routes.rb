Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    password:      'users/passwords',
    registrations: 'users/registrations'
  }
  root to: 'aquarium#index'

  namespace :admins do
    resources :aquaria
  end
end
