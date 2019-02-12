Rails.application.routes.draw do
  resources :feedbacks
  resources :reviews
  patch '/jobs/:id/accept', to: 'jobs#accept', as: 'accept'
  resources :jobs
  resources :furnitures, only: [:new, :index]
  resources :users
  root :to => "mains#home"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
