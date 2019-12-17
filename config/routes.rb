Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :users
  namespace :posts do
    resources :searches, only: :index
  end
  resources :posts do
    resources :comments, only: [:index, :create, :show]
  end
resources :messages, only: [:create]
resources :rooms, only: [:create, :show, :index]
end
