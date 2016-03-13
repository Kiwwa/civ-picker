class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :name
    end
  end
end
