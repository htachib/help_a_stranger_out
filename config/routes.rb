Rails.application.routes.draw do
  root 'pages#home'
  get '/auth/blockstack/callback' => 'pages#blockstack_callback'

  # resources :feed, only: [:index]
  get '/feed', to: 'deeds#index'
  resources :deeds, only: [:index, :create, :show, :edit, :new]
  resources :stories, only: [:create, :show, :edit, :new]

  get '/profile', to: 'users#show'
  resources :users, only: [:show, :create, :edit, :update]



  # payments
  resources :charges, only: [:create, :destroy]

  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'signup', to: "registrations#new", as: 'signup'
    post 'users', to: 'users#create', as: 'registrations'
    get 'login', to: "sessions#new", as: 'login'
    match 'logout', to: "sessions#destroy", as: 'logout', via: [:get, :delete]
  end
end
