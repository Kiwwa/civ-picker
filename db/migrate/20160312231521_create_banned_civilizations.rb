class CreateBannedCivilizations < ActiveRecord::Migration
  def change
    create_table :banned_civilizations do |t|
      t.integer :game_id
      t.integer :civilization_id
    end
  end
end
