Rails.application.routes.draw do
  resources :feedbacks
  resources :reviews
  resources :jobs
  resources :furnitures
  resources :users
  root :to => "mains#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
