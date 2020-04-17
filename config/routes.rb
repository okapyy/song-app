Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users

  root to: 'videos#index'

  namespace :videos do
    resources :searches, only: [:index]
  end

  resources :videos do
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :users, only: [:show, :edit, :update]
  
end
