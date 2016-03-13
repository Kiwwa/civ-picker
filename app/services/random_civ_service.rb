class RandomCivService
  def self.pick(game)
    banned_civilizations = game.banned_civilizations.map do |banned|
      banned.civilization
    end

    picked_civilizations = game.game_players.map do |picked|
      picked.civilization
    end

    (Civilization.all - banned_civilizations - picked_civilizations).sample
  end
end
