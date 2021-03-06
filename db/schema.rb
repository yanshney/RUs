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

ActiveRecord::Schema.define(version: 20180106043029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_choices", force: :cascade do |t|
    t.string "gender"
    t.string "number"
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_longs", force: :cascade do |t|
    t.string "partOne"
    t.string "ansWrongOne"
    t.string "ansWrongTwo"
    t.string "ansWrongThree"
    t.string "ansRight"
    t.string "partTwo"
    t.string "ansWrongOne2"
    t.string "ansWrongTwo2"
    t.string "ansWrongThree2"
    t.string "ansRight2"
    t.string "partThree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_moves", force: :cascade do |t|
    t.string "word"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_plurals", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.string "questions_choice", default: [], array: true
    t.string "questions_move", default: [], array: true
    t.integer "active_tab"
    t.integer "curr_score"
    t.integer "curr_q"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
