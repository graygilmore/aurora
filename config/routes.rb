Rails.application.routes.draw do
  root "pages#index"

  resources :products
  get "login", to: "user_sessions#new"
  post "login", to: "user_sessions#create"
  get "logout", to: "user_sessions#destroy"
end
