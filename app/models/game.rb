class Game < ActiveRecord::Base
  has_many :game_players
  has_many :game_civilizations, through: :game_players

  def picked_civs
    game_civilizations.where(status: 0)
  end

  def banned_civs
    game_civilizations.where(status: 1)
  end
end
