Rails.application.routes.draw do
  root 'pages#home'

  get '/feed', to: 'deeds#index', as: 'feed'

  get '/funding', to: 'pages#deed_fund', as: 'deed_fund'

  get '/inspire-me', to: 'pages#inspire_me', as: 'inspire_me'

  get '/why', to: 'pages#why', as: 'why'

  resources :deeds, only: [:index, :create, :show, :edit, :new, :update] do
    resources :stories, only: [:index] # => /deeds/:deed_id/stories
  end

  resources :smiles, only: [:create]
  resources :stats, only: [:create, :update]

  get '/profile', to: 'pages#profile', as: 'profile'
  resources :stories, only: [:new, :create]
end
