class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @players = Player.all - @game.players
    @available_civs = Civilization.all - @game.game_civilizations.map(&:civilization)
  end

  def create
    @game = Game.create(name: params[:name])
    redirect_to @game
  end
end
