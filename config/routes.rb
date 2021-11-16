Rails.application.routes.draw do
  devise_for :users
  root 'seed#index'
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create, :show] 
end
