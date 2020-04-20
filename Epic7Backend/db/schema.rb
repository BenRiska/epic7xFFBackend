# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_18_172419) do

  create_table "artefacts", force: :cascade do |t|
    t.string "role"
    t.string "name"
    t.string "description"
    t.string "art"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "arts", force: :cascade do |t|
    t.string "alt"
    t.string "src"
    t.string "insta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bosses", force: :cascade do |t|
    t.string "name"
    t.string "element"
    t.string "sprite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "moves", force: :cascade do |t|
    t.string "art"
    t.string "name"
    t.string "description"
    t.string "power"
    t.integer "multiplier"
    t.integer "skill"
    t.integer "unit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unit_id"], name: "index_moves_on_unit_id"
  end

  create_table "tiers", force: :cascade do |t|
    t.integer "boss_id", null: false
    t.integer "unit_id", null: false
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["boss_id"], name: "index_tiers_on_boss_id"
    t.index ["unit_id"], name: "index_tiers_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "element"
    t.string "sprite"
    t.string "headshot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "moves", "units"
  add_foreign_key "tiers", "bosses"
  add_foreign_key "tiers", "units"
end
