Rails.application.routes.draw do
  resources :feedbacks
  resources :reviews
  patch '/jobs/:id/accept', to: 'jobs#accept', as: 'accept'
  patch '/jobs/:id/complete', to: 'jobs#complete', as: 'complete'
  get '/jobs/my-jobs', to: 'jobs#my_jobs', as: 'my-jobs'
  resources :jobs
  resources :furnitures, only: [:new, :index]
  resources :users
  root :to => "mains#home"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/self', to: 'users#myself', as: 'self'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
