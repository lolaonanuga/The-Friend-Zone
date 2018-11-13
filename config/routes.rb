Rails.application.routes.draw do

  resources :users


  root 'pages#index'
  get '/home', to: 'pages#index', as: "home"
  
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to:  'sessions#create', as: 'sessions'

  get '/signup', to: 'users#new', as: 'signup'
  
  post '/logout', to: 'sessions#destroy', as: 'logout'

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
