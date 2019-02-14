Rails.application.routes.draw do
  resources :reviews, only: [:index]
  patch '/jobs/:id/accept', to: 'jobs#accept', as: 'accept'
  patch '/jobs/:id/complete', to: 'jobs#complete', as: 'complete'
  patch '/jobs/:id/cancel', to: 'jobs#cancel', as: 'cancel'
  patch '/jobs/:id/uncancel', to: 'jobs#uncancel', as: 'uncancel'
  get '/jobs/my-jobs', to: 'jobs#my_jobs', as: 'my-jobs'
  resources :jobs
  resources :users, except: [:index]
  root :to => "mains#home"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/self', to: 'users#myself', as: 'self'

  get '/:fail', to: 'mains#not_found'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
