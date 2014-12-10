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

ActiveRecord::Schema.define(version: 20141203192629) do

  create_table "addicional_informations", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.integer  "zip_code"
    t.string   "city"
    t.string   "street"
    t.integer  "door_number"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", force: true do |t|
    t.integer  "state"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_types", force: true do |t|
    t.integer  "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "premia", force: true do |t|
    t.string   "description"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rankings", force: true do |t|
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.boolean  "availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_provider_premia", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_providers", force: true do |t|
    t.string   "current_job"
    t.float    "radius"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_type_service_providers", force: true do |t|
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.integer  "state"
    t.date     "service_date"
    t.date     "matching_date"
    t.date     "creation_date"
    t.integer  "zip_code"
    t.string   "city",          null: false
    t.string   "street",        null: false
    t.string   "doorNumber",    null: false
    t.string   "district",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slots", force: true do |t|
    t.time     "begining_hour"
    t.time     "ending_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "description"
    t.string   "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "cc"
    t.integer  "cell_phone"
    t.integer  "phone"
    t.string   "email"
    t.date     "birth_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  add_index "users", ["cc"], name: "index_users_on_cc", unique: true
  add_index "users", ["cell_phone"], name: "index_users_on_cell_phone", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
