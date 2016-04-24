class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @available_civs = Civilization.all - @game.game_civilizations.map(&:civilization)
    binding.pry
  end

  def create
    @game = Game.create(name: params[:name])
    redirect_to @game
  end
end
