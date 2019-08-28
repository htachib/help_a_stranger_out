Rails.application.routes.draw do
  root 'pages#home'

  get '/feed', to: 'deeds#index', as: 'feed'

  resources :deeds, only: [:index, :create, :show, :edit, :new] do
    resources :stories, only: [:index] # => /deeds/:deed_id/stories
  end

  resources :smiles, only: [:create]
  resources :stats, only: [:create, :update]

  get '/profile', to: 'pages#profile', as: 'profile'
  resources :stories, only: [:new, :create]
end
