Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'

  resources :availabilities do
    resources :bookings, only: [:new, :create]
  end
  
end
