class GameCivilization < ActiveRecord::Base
  belongs_to :game
  belongs_to :civilization
  enum status: { free: 0, chosen: 1, banned: 2 }
end
