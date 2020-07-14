Rails.application.routes.draw do
  resources :flights
  resources :airports
  resources :bookings

  root to: 'flights#index'
end
