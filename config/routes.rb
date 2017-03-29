Rails.application.routes.draw do
  resources :participants

  post 'race', to: 'games#update'
  patch 'reseed', to: 'games#reseed'

  root to: 'games#index'
end
