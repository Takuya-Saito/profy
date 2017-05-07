Rails.application.routes.draw do
  devise_for :users
#  root to: 'top#index'
  # get 'questions/:id/answers/new' => 'answers#new'
  root controller: :top, action: :index
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create] do
    resources :answers, only: [:new, :create]
  end
end
