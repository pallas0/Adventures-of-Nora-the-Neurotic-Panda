Rails.application.routes.draw do
  
  resources :situation_choices
  resources :user_choices
  resources :choices
  resources :situations
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
