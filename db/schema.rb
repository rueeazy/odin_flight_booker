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

ActiveRecord::Schema.define(version: 2020_07_15_184051) do

  create_table "airports", force: :cascade do |t|
    t.string "airport_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "flight_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer "start_airport_id"
    t.integer "end_airport_id"
    t.datetime "departure_time"
    t.integer "flight_duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "booking_id"
    t.integer "flight_id"
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "flights", "airports", column: "end_airport_id"
  add_foreign_key "flights", "airports", column: "end_airport_id"
  add_foreign_key "flights", "airports", column: "start_airport_id"
  add_foreign_key "flights", "airports", column: "start_airport_id"
  add_foreign_key "passengers", "bookings"
  add_foreign_key "passengers", "flights"
end
