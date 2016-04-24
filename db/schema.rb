# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160424000407) do

  create_table "civilizations", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "icon", limit: 255
  end

  create_table "civilizations_players", id: false, force: :cascade do |t|
    t.integer "player_id",       limit: 4, null: false
    t.integer "civilization_id", limit: 4, null: false
  end

  create_table "game_civilizations", force: :cascade do |t|
    t.integer "game_id",         limit: 4
    t.integer "civilization_id", limit: 4
    t.integer "status",          limit: 4
  end

  add_index "game_civilizations", ["game_id", "civilization_id"], name: "index_game_civilizations_on_game_id_and_civilization_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.text "name", limit: 65535
  end

  create_table "games_players", id: false, force: :cascade do |t|
    t.integer "game_id",   limit: 4, null: false
    t.integer "player_id", limit: 4, null: false
  end

  add_index "games_players", ["game_id", "player_id"], name: "index_games_players_on_game_id_and_player_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.text "name", limit: 65535
  end

end
