Rails.application.routes.draw do
  root 'homepages#home'
  resources :discoveries
  resources :users
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
end
