Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :sports, only: [:index, :show]
  resources :availabilities , only: [:index, :new, :create, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [ :index, :show ]

  if Rails.env.development?
    get '/navigation', to: 'pages#navigation'
  end
end
