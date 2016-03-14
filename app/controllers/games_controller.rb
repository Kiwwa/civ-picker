class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @available_civs = Civilization.all - @game.picked_civs - @game.banned_civs
  end

  def create
    @game = Game.create(name: params[:name])
    redirect_to @game
  end
end
