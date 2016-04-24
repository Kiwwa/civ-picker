class CreateGameCivilization < ActiveRecord::Migration
  def change
    create_table :game_civilizations do |t|
      t.integer :game_id
      t.integer :civilization_id
      t.integer :status
      t.index [:game_id, :civilization_id]
    end
  end
end
