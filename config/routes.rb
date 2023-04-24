Rails.application.routes.draw do
  resources :recipes
  root "foods#index"
  resources :foods, only: [:index, :show, :new, :create, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
