Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/movies' => 'movies#index' 
  get '/movies/:id' => 'movies#show', as: :movie 
  get '/actors' => 'actors#index'
  get '/actors/:id' => 'actors#show', as: :actor 
  
  resources :actors, only: [:index, :create, :new] do
  resources :scenes, only: [:index, :new, :create] 
  
  resources :roles, only: :create
  end 
  #resources :scenes, only: :create
  
get '/actors/:id/scenes' => 'scenes#index'
get '/actors/:id/scenes/new' => 'scenes#create'
  #get '/signup'  => 'users#new' 
  #resources :users
end 

  