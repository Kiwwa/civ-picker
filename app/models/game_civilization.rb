class GameCivilization < ActiveRecord::Base
  belongs_to :game_player
  has_one :game, through: :game_player
  belongs_to :civilization

  enum status: { picked: 0, banned: 1 }
end
