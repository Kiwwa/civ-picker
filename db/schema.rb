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

ActiveRecord::Schema.define(version: 20160312231521) do

  create_table "banned_civilizations", force: :cascade do |t|
    t.integer "game_id",         limit: 4
    t.integer "civilization_id", limit: 4
  end

  create_table "civilizations", force: :cascade do |t|
    t.string  "name",   limit: 255
    t.string  "icon",   limit: 255
    t.integer "status", limit: 4,   default: 0
  end

  create_table "game_players", force: :cascade do |t|
    t.integer "game_id",         limit: 4
    t.integer "player_id",       limit: 4
    t.integer "civilization_id", limit: 4
  end

  create_table "games", force: :cascade do |t|
    t.text "name", limit: 65535
  end

  create_table "players", force: :cascade do |t|
    t.text "name", limit: 65535
  end

end
