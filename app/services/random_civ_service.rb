class RandomCivService
  def self.pick(game)
    (Civilization.all - game.picked_civs - game.banned_civs).sample
  end
end
