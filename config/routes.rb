Rails.application.routes.draw do
  root to: 'home#index'
  patch '/capture', to: 'pokemon#capture', as: 'capture'
  patch '/damage', to: 'pokemon#damage', as: 'damage'
  get '/pokemons/new', to:'pokemon#new', as: 'create'
  post '/pokemons', to: 'pokemon#create'
  
  devise_for :trainers
  resources :trainers
end
