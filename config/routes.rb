Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :beers, only: [:index, :create, :show, :destroy] do
    resources :styles, only: [:create]
  end

  post '/signup', to: "users#create"
  get '/account', to: "users#show"
  post '/login', to: "sessions#create"
  get '/me', to: "sessions#autologin"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
