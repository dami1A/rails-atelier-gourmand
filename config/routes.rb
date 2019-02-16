Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes, only: [ :index, :create, :new ] do
    resources :doses, only: [ :create, :new]
    resources :instruction, only: [ :create, :new]
  end
  resources :doses, only: [:destroy]
  resources :instruction, only: [:destroy]

  resources :ingredients, only: [ :index]
  root 'recipes#index'
end
