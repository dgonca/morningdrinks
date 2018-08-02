Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/index', to: 'static_pages#index'
  get '/home', to: 'static_pages#home'
  root 'static_pages#index'

  resources :users
  resources :orders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
