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

ActiveRecord::Schema.define(version: 20140612002903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: true do |t|
    t.string   "title",      null: false
    t.string   "author",     null: false
    t.integer  "year",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating"
  end

  create_table "categories", force: true do |t|
    t.string "name", null: false
  end

  add_index "categories", ["name"], name: "index_categories_on_name", unique: true, using: :btree

  create_table "categorizations", force: true do |t|
    t.integer "category_id", null: false
    t.integer "book_id",     null: false
  end

  add_index "categorizations", ["category_id", "book_id"], name: "index_categorizations_on_category_id_and_book_id", unique: true, using: :btree

  create_table "checkouts", force: true do |t|
    t.integer  "book_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reader_id"
  end

  create_table "readers", force: true do |t|
    t.string "phone_number", null: false
    t.string "email"
    t.string "first_name"
    t.string "last_name"
  end

end
