class PagesController < ApplicationController
  def index
    @civilization = Civilization.available.random
    @civilization.status = 'taken'
    @civilization.save
  end

  def banned
    @available_civs = Civilization.available
    @banned_civs = Civilization.banned
  end

  def real_reset
    Civilization.update_all(status: 'available')
  end
end
