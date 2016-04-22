Rails.application.routes.draw do
  root to: 'home#index'
  resources :posts, only: [:new, :create, :show, :edit, :update, :like, :destroy]
  devise_for :users
  resources :users
  get 'posts/new', to: 'posts#new', as: 'new'
  get 'home/index', to: 'home#index', as: 'home'
  post 'posts', to: 'posts#create'
  patch 'like', to: 'posts#like', as: 'like'
  patch 'edit', to: 'posts#edit', as: 'edit'
  delete 'posts/delete/:id', to: 'posts#destroy', as: 'destroy'
end