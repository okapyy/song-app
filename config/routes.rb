Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users

  root to: 'videos#index'

  resources :videos
  resources :users, only: [:show, :edit, :update]
end
