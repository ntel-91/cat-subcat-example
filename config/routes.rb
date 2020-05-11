Rails.application.routes.draw do
  
  root to: 'auth#index'
  post '/login', to: "auth#login", as: :login
  
  # users
  get '/user', to: "users#index"
  post '/user', to: "users#create"

  # resources :products
  resources :categories do
    resources :products
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end