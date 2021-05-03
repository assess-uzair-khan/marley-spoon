Rails.application.routes.draw do
  # Declare routes for recipes as a resource
  resources :recipes, only: [:index, :show]

  root 'recipes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
