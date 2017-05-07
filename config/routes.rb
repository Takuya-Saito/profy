Rails.application.routes.draw do
  devise_for :users
#  root to: 'top#index'
  root controller: :top, action: :index
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create, :show]
  resources :answers, only: [:new, :create]
end
