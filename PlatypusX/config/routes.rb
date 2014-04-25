PlatypusX::Application.routes.draw do

  resources :questions


  # get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  resources :users
  resources :sessions, :except => "sessions#destroy"

  root :to => 'users#index'


end
