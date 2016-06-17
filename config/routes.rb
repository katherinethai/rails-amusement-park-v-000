Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy' 

  post '/rides/new', to: 'rides#new'

  resources :users, only: [:new, :create, :show]
  resources :attractions

end