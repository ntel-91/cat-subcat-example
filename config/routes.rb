Rails.application.routes.draw do
  
  root to: 'auth#login'
  post '/login', to: "auth#login", as: :login
  # resources :products
  resources :categories do
    resources :products
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
