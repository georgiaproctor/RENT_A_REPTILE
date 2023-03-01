Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the sdfasfDSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users/:id", to: "users#show", as: :user

  resources :reptiles do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index]
end
