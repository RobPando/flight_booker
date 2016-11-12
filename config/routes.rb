Rails.application.routes.draw do
  
  get 'bookings/new'

  root 'flights#index'
  get '/flights', to: 'flights#index'
  get '/booking', to: 'bookings#new'
  resources :bookings, only: [:index, :create]
end
