class GamePlayerCreateService
  def self.create(game, params)
    player = Player.find_or_create_by(name: params[:name])

    game_player = game.game_players.create(
      player_id: player.id
    )

    civilization = RandomCivService.pick(game)
    game_player.game_civilizations.create(
      civilization_id: civilization.id,
      status: 'picked'
    )
  end
end
