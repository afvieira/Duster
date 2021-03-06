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

ActiveRecord::Schema.define(version: 20150123223653) do

  create_table "additional_informations", force: true do |t|
    t.integer  "service_provider_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "additional_informations", ["service_provider_id"], name: "index_additional_informations_on_service_provider_id"

  create_table "addresses", force: true do |t|
    t.integer  "user_id"
    t.string   "zip_code"
    t.string   "city"
    t.string   "street"
    t.string   "perish"
    t.integer  "door_number"
    t.string   "district"
    t.string   "address",     null: false
    t.decimal  "lat",         null: false
    t.decimal  "long",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "answer_types", force: true do |t|
    t.string   "answer_type"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answer_types", ["answer_id"], name: "index_answer_types_on_answer_id"

  create_table "answers", force: true do |t|
    t.integer  "user_id"
    t.integer  "answer_type_id"
    t.string   "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["answer_type_id"], name: "index_answers_on_answer_type_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "days", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.integer  "service_provider_id"
    t.integer  "service_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["service_id"], name: "index_feedbacks_on_service_id"
  add_index "feedbacks", ["service_provider_id"], name: "index_feedbacks_on_service_provider_id"

  create_table "guestbooks", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", force: true do |t|
    t.integer  "state_id"
    t.integer  "service_id"
    t.integer  "answer_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "histories", ["answer_id"], name: "index_histories_on_answer_id"
  add_index "histories", ["service_id"], name: "index_histories_on_service_id"
  add_index "histories", ["state_id"], name: "index_histories_on_state_id"

  create_table "payment_types", force: true do |t|
    t.integer  "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "premia", force: true do |t|
    t.integer  "payment_type_id"
    t.string   "description"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "premia", ["payment_type_id"], name: "index_premia_on_payment_type_id"

  create_table "rankings", force: true do |t|
    t.integer  "user_id"
    t.integer  "service_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
  end

  add_index "rankings", ["service_id"], name: "index_rankings_on_service_id"
  add_index "rankings", ["user_id"], name: "index_rankings_on_user_id"

  create_table "schedules", force: true do |t|
    t.integer  "service_provider_id"
    t.integer  "slot_id"
    t.integer  "day_id"
    t.boolean  "availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_provider_premia", force: true do |t|
    t.integer  "service_provider_id"
    t.integer  "premium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_provider_premia", ["premium_id"], name: "index_service_provider_premia_on_premium_id"
  add_index "service_provider_premia", ["service_provider_id"], name: "index_service_provider_premia_on_service_provider_id"

  create_table "service_providers", force: true do |t|
    t.integer  "user_id"
    t.string   "current_job"
    t.float    "radius"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_providers", ["user_id"], name: "index_service_providers_on_user_id"

  create_table "service_type_service_providers", force: true do |t|
    t.integer  "service_provider_id"
    t.integer  "service_type_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_type_service_providers", ["service_provider_id"], name: "index_service_type_service_providers_on_service_provider_id"
  add_index "service_type_service_providers", ["service_type_id"], name: "index_service_type_service_providers_on_service_type_id"

  create_table "service_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.integer  "user_id"
    t.integer  "service_provider_id"
    t.integer  "service_type_id"
    t.integer  "state"
    t.date     "service_date"
    t.datetime "matching_date"
    t.datetime "creation_date"
    t.time     "service_start"
    t.time     "service_end"
    t.integer  "zip_code"
    t.string   "district"
    t.string   "city"
    t.string   "street"
    t.string   "door_number"
    t.string   "country"
    t.string   "perish"
    t.string   "preference"
    t.string   "address",                null: false
    t.decimal  "lat",                    null: false
    t.decimal  "long",                   null: false
    t.integer  "number_of_rooms"
    t.integer  "building_type"
    t.integer  "frequency"
    t.integer  "time_pretended"
    t.boolean  "cleaning_stuff"
    t.text     "additional_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["service_provider_id"], name: "index_services_on_service_provider_id"
  add_index "services", ["service_type_id"], name: "index_services_on_service_type_id"
  add_index "services", ["user_id"], name: "index_services_on_user_id"

  create_table "slots", force: true do |t|
    t.time     "begining_hour"
    t.time     "ending_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_tables", force: true do |t|
    t.integer  "service_provider_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",  null: false
    t.string   "encrypted_password",     default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "cc"
    t.integer  "cell_phone"
    t.integer  "phone"
    t.date     "birth_date"
    t.date     "registration_date"
    t.date     "last_access_date"
    t.string   "photo"
    t.string   "nationality"
    t.boolean  "gender"
    t.text     "description"
    t.text     "bio"
    t.string   "account_level",          default: "c", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
