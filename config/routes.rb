Rails.application.routes.draw do
  devise_for :users
  root 'members#index'
  resources :top, only: [:index]
  resources :members, only: [:create, :index] do
   resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show]
end