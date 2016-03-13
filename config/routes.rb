Rails.application.routes.draw do
  root 'games#index'

  resources :games
  post '/games/:id/newplayer', to: 'games#associate_player_with_game'
  post '/games/:id/banciv', to: 'games#ban_civilization_from_game'
end
