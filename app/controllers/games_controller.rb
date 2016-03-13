class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @available_civs = AvailableCivsService.generate(@game)
  end

  def create
    @game = Game.create(name: params[:name])
    redirect_to @game
  end

  def ban_civilization_from_game
    @game = Game.find(params[:id])
    @game.banned_civilizations.create(civilization_id: params[:civ][:id])
    redirect_to @game
  end

  def associate_player_with_game
    @game = Game.find(params[:id])
    @player = Player.create(name: params[:name])
    @civilization = RandomCivService.pick(@game)

    @game.game_players.create(player_id: @player.id, civilization_id: @civilization.id)
    redirect_to @game
  end
end
