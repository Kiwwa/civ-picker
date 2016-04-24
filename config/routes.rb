Rails.application.routes.draw do
  root 'games#index'

  resources :players, only: [:show]

  resources :games do
    resources :civilizations, only: [:create, :update, :delete]
    resources :players, only: [:create, :delete]
  end
end
