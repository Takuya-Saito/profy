Rails.application.routes.draw do
  devise_for :users
#  root to: 'top#index'
  root controller: :top, action: :index
end
