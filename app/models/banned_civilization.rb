class BannedCivilization < ActiveRecord::Base
  belongs_to :game
  belongs_to :civilization
end
