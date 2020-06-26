Rails.application.routes.draw do
  resources :genres
  patch 'genres/:id', to: 'genres#update'


  resources :artists
  patch 'artists/:id', to: 'artists#update'

  resources :songs
  patch 'songs/:id', to: 'songs#update'
end
