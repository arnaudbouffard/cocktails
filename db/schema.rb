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

ActiveRecord::Schema.define(version: 20140516111127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cocktails", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dosages", force: true do |t|
    t.integer  "cocktail_id"
    t.integer  "ingredient_id"
    t.string   "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dosages", ["cocktail_id"], name: "index_dosages_on_cocktail_id", using: :btree
  add_index "dosages", ["ingredient_id"], name: "index_dosages_on_ingredient_id", using: :btree

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
