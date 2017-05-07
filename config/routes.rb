Rails.application.routes.draw do
  devise_for :users
  get 'questions/:id/answers/new' => 'answers#new'
#  root to: 'top#index'
  root controller: :top, action: :index
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create]
  resources :answers, only: [:new, :create]
end
