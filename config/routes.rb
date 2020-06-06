Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :sports, only: [:index, :show]
  resources :availabilities , only: [:index, :new, :create, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [ :index, :show, :update ]

  if Rails.env.development?
    get '/navigation', to: 'pages#navigation'
    get '/kitchensink', to: 'pages#kitchensink'
    get '/kitchensink_2', to: 'pages#kitchensink_2'
  end
end
