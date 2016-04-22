Rails.application.routes.draw do
  root to: 'home#index'
  resources :posts
  devise_for :users
  resources :users
  get 'posts/new', to: 'posts#new', as: 'new'
  get 'home/index', to: 'home#index', as: 'home'
  post 'posts', to: 'posts#create'
  patch 'like', to: 'posts#like', as: 'like'
  delete 'posts/delete/:id', to: 'posts#destroy', as: 'destroy'
end