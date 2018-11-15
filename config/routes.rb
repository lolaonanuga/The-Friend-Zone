Rails.application.routes.draw do

  resources :users


  root 'pages#index'
  get '/home', to: 'pages#index', as: "home"

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to:  'sessions#create', as: 'sessions'

  get '/signup', to: 'users#new', as: 'signup'

  post '/logout', to: 'sessions#destroy', as: 'logout'


  get "/users/:id/messages/new", to: "messages#new", as: :messages
  post "/users/:id/messages/new", to: "messages#create", as: :create_messages
  get "/users/:id/users/show", to: "messages#show", as: :show_all
  # resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
