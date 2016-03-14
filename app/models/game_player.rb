class GamePlayer < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  has_many :game_civilizations

  def civilizations
    game_civilizations.map { |gc| gc.civilization.name }.join(", ")
  end
end
