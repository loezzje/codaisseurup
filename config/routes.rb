Rails.application.routes.draw do

  get 'pages/home'

  root to: 'pages#home'
  devise_for :users

  resources :events, except: [:destroy] do
    resources :registrations, only: [:create]
  end
  resources :categories
  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos, only: [:destroy]

  namespace :api do
    resources :events do
      resources :registrations, only: [:create]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
