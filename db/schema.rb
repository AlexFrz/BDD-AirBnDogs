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

ActiveRecord::Schema.define(version: 2020_04_30_165219) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.integer "strolls_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["strolls_id"], name: "index_cities_on_strolls_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "dogsitter_id"
    t.integer "city_id"
    t.integer "stroll_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_dogs_on_city_id"
    t.index ["dogsitter_id"], name: "index_dogs_on_dogsitter_id"
    t.index ["stroll_id"], name: "index_dogs_on_stroll_id"
  end

  create_table "dogsitters", force: :cascade do |t|
    t.string "nickname"
    t.integer "dog_id"
    t.integer "city_id"
    t.integer "stroll_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_dogsitters_on_city_id"
    t.index ["dog_id"], name: "index_dogsitters_on_dog_id"
    t.index ["stroll_id"], name: "index_dogsitters_on_stroll_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "date"
    t.integer "dogsitter_id"
    t.integer "dog_id"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_strolls_on_city_id"
    t.index ["dog_id"], name: "index_strolls_on_dog_id"
    t.index ["dogsitter_id"], name: "index_strolls_on_dogsitter_id"
  end

  add_foreign_key "cities", "strolls", column: "strolls_id"
  add_foreign_key "dogs", "cities"
  add_foreign_key "dogs", "dogsitters"
  add_foreign_key "dogs", "strolls"
  add_foreign_key "dogsitters", "cities"
  add_foreign_key "dogsitters", "dogs"
  add_foreign_key "dogsitters", "strolls"
  add_foreign_key "strolls", "cities"
  add_foreign_key "strolls", "dogs"
  add_foreign_key "strolls", "dogsitters"
end
