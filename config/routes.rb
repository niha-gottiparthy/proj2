Rails.application.routes.draw do
  get 'home/index'

  root to: 'home#index'
  resources :post, only: [:new, :create, :index, :destroy]
  devise_for :users
end
