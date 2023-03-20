Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'ingredients/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes do
    resources :ingredients, only: %i[create destroy]
  end
  get 'recipes/:id/tried', to: 'recipes#tried', as: 'recipe_tried'
  # Defines the root path route ("/")
  # root "articles#index"
end
