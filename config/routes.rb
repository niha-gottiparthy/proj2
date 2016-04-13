Rails.application.routes.draw do
  root to: 'home#index'
	devise_scope :user do
	  get "/login" => "devise/sessions#new"
	end
  resources :post
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  get 'posts/new', to: 'posts#new', as: 'new'
  get 'home/index', to: 'home#index', as: 'home'
  post 'posts', to: 'posts#create'
end
