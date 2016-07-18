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

ActiveRecord::Schema.define(version: 20160717234615) do

  create_table "cities", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "place_id"
    t.index ["name"], name: "index_cities_on_name", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",                       null: false
    t.string   "description"
    t.integer  "city_id",                     null: false
    t.string   "address",                     null: false
    t.datetime "start",                       null: false
    t.datetime "end",                         null: false
    t.boolean  "wifi",        default: false
    t.boolean  "power",       default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["city_id"], name: "index_events_on_city_id"
    t.index ["start"], name: "index_events_on_start"
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "phone",      null: false
    t.string   "team"
    t.integer  "city_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_trainers_on_city_id"
    t.index ["name"], name: "index_trainers_on_name", unique: true
  end

end
