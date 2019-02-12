Rails.application.routes.draw do
  resources :feedbacks
  resources :reviews
  resources :jobs
  resources :furnitures
  resources :users
  root :to => "mains#home"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
