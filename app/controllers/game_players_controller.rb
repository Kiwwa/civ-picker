class GamePlayersController < ApplicationController
  def create
    game = Game.find(params[:game])

    GamePlayerCreateService.create(game, params)

    redirect_to game
  end

  def delete
    game_player = GamePlayer.find(params[:id])

    redirect_to game_player.game
  end
end
