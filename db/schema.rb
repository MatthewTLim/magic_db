# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_27_055711) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.integer "cmc"
    t.string "colors"
    t.string "color_identity"
    t.string "card_type"
    t.string "supertype"
    t.string "types"
    t.string "subtype"
    t.string "rarity"
    t.string "mtg_set"
    t.string "set_name"
    t.text "text"
    t.text "flavor"
    t.string "artist"
    t.string "card_number"
    t.string "power"
    t.string "toughness"
    t.text "legality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mtg_sets", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "card_type"
    t.boolean "booster"
    t.string "mkm_name"
    t.string "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_cards", force: :cascade do |t|
    t.bigint "mtg_set_id", null: false
    t.bigint "card_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_set_cards_on_card_id"
    t.index ["mtg_set_id"], name: "index_set_cards_on_mtg_set_id"
  end

  add_foreign_key "set_cards", "cards"
  add_foreign_key "set_cards", "mtg_sets"
end
