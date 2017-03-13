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

ActiveRecord::Schema.define(version: 20170313170237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_works", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.text     "visual_url"
    t.integer  "artists_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["artists_id"], name: "index_art_works_on_artists_id", using: :btree
  end

  create_table "artists", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.text     "password"
    t.string   "first"
    t.string   "last"
    t.text     "portrait_url"
    t.string   "phone_number"
    t.text     "website_url"
    t.text     "bio"
    t.string   "quick_intro"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "create_join_table_user_artists", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "artists_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artists_id"], name: "index_create_join_table_user_artists_on_artists_id", using: :btree
    t.index ["users_id"], name: "index_create_join_table_user_artists_on_users_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.text     "password"
    t.string   "first"
    t.string   "last"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "art_works", "artists", column: "artists_id"
  add_foreign_key "create_join_table_user_artists", "artists", column: "artists_id"
  add_foreign_key "create_join_table_user_artists", "users", column: "users_id"
end
