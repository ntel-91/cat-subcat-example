Rails.application.routes.draw do
  
  # auth
  get '/login', to: 'sessions#new'
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy", as: :logout
  
  # users
  resources :users, only: [:new, :create]
  

  # resources :products
  resources :categories do
    resources :products
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end