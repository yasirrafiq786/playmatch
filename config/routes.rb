Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'

<<<<<<< HEAD
  resources :availabilities do
    resources :bookings, only: [:new, :create]
  end
  
=======
  resources :sports, only: [:index, :show]
  resources :availabilities , only:[:index, :new, :create, :show]

  if Rails.env.development?
    get '/navigation', to: 'pages#navigation'
  end
>>>>>>> master
end
