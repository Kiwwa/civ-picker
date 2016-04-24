class CreateJoinTablePlayerCivilization < ActiveRecord::Migration
  def change
    create_join_table :players, :civilizations do |t|
      # t.index [:player_id, :civilization_id]
      # t.index [:civilization_id, :player_id]
    end
  end
end
