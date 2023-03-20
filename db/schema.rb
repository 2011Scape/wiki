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

ActiveRecord::Schema[7.0].define(version: 2023_03_20_032208) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.integer "item_id"
    t.string "name"
    t.string "examine"
    t.string "destroy_message"
    t.boolean "tradeable"
    t.integer "weight"
    t.integer "attack_speed"
    t.integer "attack_stab"
    t.integer "attack_slash"
    t.integer "attack_crush"
    t.integer "attack_magic"
    t.integer "attack_range"
    t.integer "defence_stab"
    t.integer "defence_slash"
    t.integer "defence_crush"
    t.integer "defence_magic"
    t.integer "defence_range"
    t.integer "prayer"
    t.integer "range_strength"
    t.integer "magic_damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
