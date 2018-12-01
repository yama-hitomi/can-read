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

ActiveRecord::Schema.define(version: 2018_12_01_064605) do

  create_table "book_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_categories_on_book_id"
  end

  create_table "books", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "image", null: false
    t.string "title", null: false
    t.string "author", null: false
    t.integer "page_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_achivements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "page_number", null: false
    t.text "impression"
    t.bigint "read_plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["read_plan_id"], name: "index_daily_achivements_on_read_plan_id"
  end

  create_table "daily_plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "start_hour", null: false
    t.integer "start_minute", null: false
    t.bigint "daily_plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_plan_id"], name: "index_daily_plans_on_daily_plan_id"
  end

  create_table "read_plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.date "end_expected_on", null: false
    t.boolean "finished", default: false, null: false
    t.integer "read_page_of_day", null: false
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_read_plans_on_book_id"
  end

  add_foreign_key "book_categories", "books"
  add_foreign_key "daily_achivements", "read_plans"
  add_foreign_key "daily_plans", "daily_plans"
  add_foreign_key "read_plans", "books"
end
