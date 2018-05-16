Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :directors
  resources :actors

  get '/persons/new' ,to: 'person#new'

  post '/persons/create' ,to: 'person#create'

  get '/persons' ,to: 'person#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
