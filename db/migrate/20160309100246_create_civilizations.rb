class CreateCivilizations < ActiveRecord::Migration
  def change
    create_table :civilizations do |t|
      t.string  :name
      t.string  :icon
      t.integer :status, default: 0
    end
  end
end
