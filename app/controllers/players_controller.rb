class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.create(name: params[:name])
    binding.pry
    redirect_to @player
  end
end
