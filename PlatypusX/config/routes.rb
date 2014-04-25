PlatypusX::Application.routes.draw do

  # get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  resources :users
  resources :sessions, :except => "sessions#destroy"

  root :to => 'sessions#new'


end
