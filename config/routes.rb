Rails.application.routes.draw do
  get 'tracks/index'

  resources :participants

  post 'race', to: 'games#update'
  patch 'reseed', to: 'games#reseed'
  get 'tracks', to: 'tracks#index'

  root to: 'games#index'
end
