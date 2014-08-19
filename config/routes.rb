Rails.application.routes.draw do

  get 'users/show'
  
  match '/signup', to: 'users#new', via: :get
  get '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  
  root 'static_pages#home'

  match 'help', to: 'static_pages#help', via: :get
  match 'about', to: 'static_pages#about', via: :get
  match 'contact', to: 'static_pages#contact', via: :get
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts
  resources :users

end