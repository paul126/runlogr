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

ActiveRecord::Schema.define(version: 20150319141716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.integer  "author_id",  null: false
    t.string   "title",      null: false
    t.text     "body",       null: false
    t.text     "preview"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogs", ["author_id"], name: "index_blogs_on_author_id", using: :btree
  add_index "blogs", ["title"], name: "index_blogs_on_title", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "body",             null: false
    t.integer  "author_id",        null: false
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comments", ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id", using: :btree

  create_table "follows", force: :cascade do |t|
    t.integer  "leader_id",   null: false
    t.integer  "follower_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "follows", ["follower_id"], name: "index_follows_on_follower_id", using: :btree
  add_index "follows", ["leader_id"], name: "index_follows_on_leader_id", using: :btree

  create_table "logs", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "title"
    t.date     "date",       null: false
    t.float    "distance",   null: false
    t.float    "duration",   null: false
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "shoe_id"
  end

  add_index "logs", ["date"], name: "index_logs_on_date", using: :btree
  add_index "logs", ["title"], name: "index_logs_on_title", using: :btree
  add_index "logs", ["user_id"], name: "index_logs_on_user_id", using: :btree

  create_table "shoes", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "name",       null: false
    t.float    "distance",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shoes", ["name"], name: "index_shoes_on_name", using: :btree
  add_index "shoes", ["user_id"], name: "index_shoes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                    null: false
    t.string   "username",                 null: false
    t.string   "pw_digest",                null: false
    t.string   "session_token",            null: false
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["description"], name: "index_users_on_description", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true, using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
