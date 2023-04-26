Rails.application.routes.draw do
  root "foods#index"
  devise_for :users
  resources :recipes
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  get "public_recipes", to: "public_recipes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
