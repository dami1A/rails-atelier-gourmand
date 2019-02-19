Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :recipes, only: [:index, :create, :new, :show, :destroy] do
    resources :doses, only: [:create]
    resources :instructions, only: [:create]
  end
  resources :doses, only: [:destroy]
  resources :instructions, only: [:destroy]

  resources :ingredients, only: [:index, :create, :new]
  root 'recipes#index'
end
