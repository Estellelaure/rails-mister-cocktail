Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :doses, only: [:new, :create] # cré dose pour un cocktail spécifique
  end
  resources :doses, only: [ :destroy]
end
