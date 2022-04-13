Rails.application.routes.draw do
  
  resources :situation_choices
  resources :user_choices
  resources :choices, only: [:index, :show]
  resources :situations, only: [:index, :show]
  resources :users, only: [:index]
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
