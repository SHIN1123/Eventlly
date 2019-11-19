Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :users
  resources :posts do
    resources :comments, only: [:index, :create, :show]
  end
resources :messages, only: [:create]
resources :rooms, only: [:create, :show, :index]
end
