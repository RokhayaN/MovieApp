Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/movies' => 'movies#index' 
  get '/movies/:id' => 'movies#show', as: :movie 
  get '/actors' => 'actors#index'
  get '/actors/:id' => 'actors#show', as: :actor 
  
  resources :actors do
    resources :scenes
  resources :scenes
  end 
  #resources :scenes, only: :create
  
  get '/actors/:id/scenes' => 'scenes#index'
  get '/actors/:id/scenes/new' => 'scenes#new'
  get '/signup'  => 'users#new' 
  resources :users

    get '/login' => 'sessions#new' 
    post '/login' => 'sessions#create'
    delete '/logout' => 'sessions#destroy' 
end 