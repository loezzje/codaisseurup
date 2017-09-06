Rails.application.routes.draw do

  get 'pages/home'

  root to: 'pages#home'
  devise_for :users

  resources :events, except: [:destroy]
  resources :categories
  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
