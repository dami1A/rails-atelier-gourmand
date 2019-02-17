Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :create, :new, :show] do
    resources :doses, only: [:create]
    resources :instructions, only: [:create]
  end
  resources :doses, only: [:destroy]
  resources :instructions, only: [:destroy]

  resources :ingredients, only: [:index]
  root 'recipes#index'
end
