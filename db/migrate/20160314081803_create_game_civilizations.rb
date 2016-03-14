class CreateGameCivilizations < ActiveRecord::Migration
  def change
    create_table :game_civilizations do |t|
      t.integer :game_player_id
      t.integer :civilization_id
      t.integer :status
    end
  end
end
