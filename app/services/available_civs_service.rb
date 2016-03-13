class AvailableCivsService
  def self.generate(game)
    banned_civilizations = game.banned_civilizations.map do |b|
      b.civilization
    end

    picked_civilizations = game.game_players.map do |picked|
      picked.civilization
    end

    Civilization.all - banned_civilizations - picked_civilizations
  end
end
