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

ActiveRecord::Schema.define(version: 20151108233233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "farmers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.integer  "market_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_match"
    t.string   "small_desc"
    t.string   "photo"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "favorable_id"
    t.string   "favorable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["user_id", "favorable_id", "favorable_type"], name: "index_favorites_on_user_id_and_favorable_id_and_favorable_type", unique: true, using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "farmer_id"
    t.string   "in_stock"
    t.string   "photo"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markets", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "website"
    t.string   "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "photo"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "photo"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "farmer_access",   default: false
  end

end
