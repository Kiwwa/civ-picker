Rails.application.routes.draw do
  root 'games#index'

  resources :players, only: [:show]

  resources :games do
    resources :game_civilizations,
      as: 'civilizations',
      path: 'civilizations',
      only: [:create, :update, :delete]
    resources :game_players,
      as: 'players',
      path: 'players',
      only: [:create, :delete]
  end
end
