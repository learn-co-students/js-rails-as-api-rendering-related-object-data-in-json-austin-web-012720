Rails.application.routes.draw do
  resources :sightings
  get '/birds', to: 'birds#index'
end