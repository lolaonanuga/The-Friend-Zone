Rails.application.routes.draw do
  resources :user_interests
  resources :categories
  resources :interests
  resources :users
  get "/users/:id/messages/new", to: "messages#new", as: :messages
  post "/users/:id/messages/new", to: "messages#create", as: :create_messages
  get "/users/:id/messages/show", to: "messages#show", as: :show_all
  # resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
