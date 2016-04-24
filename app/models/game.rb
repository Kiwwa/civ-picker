class Game < ActiveRecord::Base
  has_and_belongs_to_many :players
  has_many :game_civilizations
  has_many :civilizations, through: :game_civilizations
end
