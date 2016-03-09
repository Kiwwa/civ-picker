class Civilization < ActiveRecord::Base
  include Randomable

  scope :available, -> { where(status: 'available') }
  scope :banned,    -> { where(status: 'banned') }

  enum status: { available: 0, taken: 1, banned: 2 }
end
