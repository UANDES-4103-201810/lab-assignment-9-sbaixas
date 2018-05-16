Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :directors
  resources :actors

  get '/person/new' ,to: 'person#new'

  post '/person/create' ,to: 'person#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
