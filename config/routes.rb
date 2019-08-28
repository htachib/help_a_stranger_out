Rails.application.routes.draw do
  root 'pages#home'
  get '/auth/blockstack/callback' => 'pages#blockstack_callback'

  get '/feed', to: 'deeds#index', as: 'feed'

  resources :deeds, only: [:index, :create, :show, :edit, :new] do
    resources :stories, only: [:index] # => /deeds/:deed_id/stories
  end

  resources :smiles, only: [:create]
  resources :stats, only: [:create, :update]

  get '/profile', to: 'pages#profile', as: 'profile'
  resources :users, only: [:show, :create, :edit, :update]
  resources :stories, only: [:new, :create]
end
