Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the sdfasfDSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :reptiles do
    resources :bookings only: [:new, :create, :index]
  end
end

