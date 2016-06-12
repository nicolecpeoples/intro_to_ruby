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

ActiveRecord::Schema.define(version: 20160610171453) do

  create_table "characters", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.boolean  "dead"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "characters", ["house_id"], name: "index_characters_on_house_id"

  create_table "houses", force: true do |t|
    t.string   "name"
    t.string   "kingdom"
    t.integer  "lord"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "houses", ["lord"], name: "index_houses_on_lord"

end
