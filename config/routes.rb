Rails.application.routes.draw do
  root 'games#index'

  resources :players, only: [:show, :create]

  resources :games, only: [:show, :create] do
    resources :civilizations, only: [:create, :update, :delete]
    resources :players, only: [:create, :delete]
  end
end
