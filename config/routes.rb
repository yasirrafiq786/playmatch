Rails.application.routes.draw do
  get 'availabilities/index'
  get 'availabilities/new'
  get 'availabilities/create'
  get 'availabilities/show'
  devise_for :users
  root to: 'pages#home'

  resources :sports, only: [:index, :show]
  resources :availabilities , only:[:index, :new, :create, :show]
end
