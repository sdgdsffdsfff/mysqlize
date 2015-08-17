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

ActiveRecord::Schema.define(version: 20150810041335) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "tool_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["tool_id"], name: "index_categories_on_tool_id", using: :btree

  create_table "option_releases", force: :cascade do |t|
    t.integer  "option_id",  limit: 4
    t.integer  "release_id", limit: 4
    t.boolean  "deprecated"
    t.boolean  "introduced"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "option_releases", ["option_id"], name: "index_option_releases_on_option_id", using: :btree
  add_index "option_releases", ["release_id"], name: "index_option_releases_on_release_id", using: :btree

  create_table "options", force: :cascade do |t|
    t.string   "name",                       limit: 255
    t.string   "long_option",                limit: 255
    t.string   "short_option",               limit: 255
    t.string   "option_file",                limit: 255
    t.boolean  "short_option_can_be_strung"
    t.text     "description",                limit: 65535
    t.integer  "status",                     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "introduced_version",         limit: 6
    t.string   "removed_version",            limit: 6
    t.string   "extended_description",       limit: 5000
    t.string   "default_value",              limit: 20
    t.integer  "category_id",                limit: 4
  end

  add_index "options", ["category_id"], name: "index_options_on_category_id", using: :btree

  create_table "options_releases", force: :cascade do |t|
    t.integer  "option_id",  limit: 4
    t.integer  "release_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "options_releases", ["option_id"], name: "index_options_releases_on_option_id", using: :btree
  add_index "options_releases", ["release_id"], name: "index_options_releases_on_release_id", using: :btree

  create_table "privileges", force: :cascade do |t|
    t.string "name",        limit: 45
    t.string "description", limit: 5000
    t.string "context",     limit: 45
  end

  create_table "releases", force: :cascade do |t|
    t.string   "major_version", limit: 10
    t.string   "minor_version", limit: 10
    t.string   "build_release", limit: 45
    t.string   "edition",       limit: 45
    t.boolean  "is_latest"
    t.integer  "tool_id",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url",           limit: 255
    t.date     "release_date"
    t.string   "full_version",  limit: 65
  end

  add_index "releases", ["tool_id"], name: "index_releases_on_tool_id", using: :btree

  create_table "tools", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "status",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
