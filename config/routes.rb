Rails.application.routes.draw do
  resources :profiles
  root 'users#new'
  resources :sessions
  resources :posts
  resources :users
  resources :favorites, only: [:create, :destroy, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
