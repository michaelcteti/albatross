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

ActiveRecord::Schema.define(version: 20160331142846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "full_name"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "holes", force: :cascade do |t|
    t.integer  "number",     null: false
    t.integer  "par",        null: false
    t.integer  "handicap",   null: false
    t.integer  "yards",      null: false
    t.integer  "score",      null: false
    t.integer  "round_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "holes", ["round_id"], name: "index_holes_on_round_id", using: :btree

  create_table "rounds", force: :cascade do |t|
    t.datetime "date"
    t.string   "weather"
    t.string   "wind"
    t.string   "temp"
    t.string   "handicap_valid"
    t.integer  "tee_id",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rounds", ["tee_id"], name: "index_rounds_on_tee_id", using: :btree

  create_table "shots", force: :cascade do |t|
    t.integer  "club_id",    null: false
    t.integer  "yards",      null: false
    t.string   "lie",        null: false
    t.integer  "number",     null: false
    t.integer  "hole_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shots", ["club_id"], name: "index_shots_on_club_id", using: :btree
  add_index "shots", ["hole_id"], name: "index_shots_on_hole_id", using: :btree

  create_table "strokes_expected_putts", force: :cascade do |t|
    t.integer  "distance"
    t.float    "strokes_expected"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tees", force: :cascade do |t|
    t.string   "color",      null: false
    t.string   "rating",     null: false
    t.integer  "slope",      null: false
    t.integer  "course_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tees", ["course_id"], name: "index_tees_on_course_id", using: :btree

end
