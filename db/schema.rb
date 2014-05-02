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

ActiveRecord::Schema.define(version: 20140502013318) do

  create_table "options", force: true do |t|
    t.string   "name"
    t.string   "long_option"
    t.string   "short_option"
    t.string   "option_file"
    t.boolean  "short_option_can_be_strung"
    t.text     "description"
    t.integer  "status"
    t.integer  "tool_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "introduced_version",         limit: 5
    t.string   "removed_version",            limit: 5
    t.string   "extended_description",       limit: 1500
    t.string   "default_value",              limit: 20
  end

  add_index "options", ["tool_id"], name: "index_options_on_tool_id"

  create_table "releases", force: true do |t|
    t.string   "major_version", limit: 10
    t.string   "minor_version", limit: 10
    t.string   "build_release", limit: 45
    t.string   "edition",       limit: 45
    t.boolean  "is_latest"
    t.integer  "tool_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.date     "release_date"
    t.string   "full_version",  limit: 65
  end

  add_index "releases", ["tool_id"], name: "index_releases_on_tool_id"

  create_table "tools", force: true do |t|
    t.string   "name"
    t.text     "description", limit: 255
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
