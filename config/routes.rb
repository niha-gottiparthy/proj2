Rails.application.routes.draw do
  root to: 'home#index'
  resources :post
  devise_for :users
  get 'posts/new', to: 'posts#new', as: 'new'
  post 'posts', to: 'posts#create'
end
