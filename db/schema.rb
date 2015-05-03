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

ActiveRecord::Schema.define(version: 20150503172140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basic_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "maiden_name"
    t.string   "formatted_name"
    t.string   "headline"
    t.string   "location"
    t.string   "industry"
    t.string   "summary"
    t.string   "specialties"
    t.string   "picture_url"
    t.string   "public_profile_url"
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "professional_brand_statement"
    t.string   "passion"
    t.string   "want_to_try"
    t.string   "perfect_weekend"
    t.string   "strengths"
    t.string   "next_year_goals"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "school_name"
    t.string   "field_of_study"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "degree"
    t.string   "activities"
    t.string   "notes"
    t.integer  "full_profile_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "full_profiles", force: :cascade do |t|
    t.string   "associations"
    t.string   "honors"
    t.string   "interests"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "linkedin_oauth_settings", force: :cascade do |t|
    t.string   "atoken"
    t.string   "asecret"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "title"
    t.string   "summary"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_current"
    t.string   "company"
    t.integer  "full_profile_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
