Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :sports, only: [:index, :show] do
    resources :availabilities, only: :index
  end
  resources :availabilities , only: [:new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [ :index, :show, :update ] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: :index

  if Rails.env.development?
    get '/navigation', to: 'pages#navigation'
    get '/kitchensink', to: 'pages#kitchensink'
    get '/kitchensink_2', to: 'pages#kitchensink_2'
  end
end
