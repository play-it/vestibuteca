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

ActiveRecord::Schema.define(version: 20161118202543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternatives", id: :serial, force: :cascade do |t|
    t.string "text"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_alternatives_on_question_id"
  end

  create_table "attachments", id: :serial, force: :cascade do |t|
    t.json "content", default: "{}", null: false
    t.string "type"
    t.string "attachable_type"
    t.integer "attachable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachable_type", "attachable_id"], name: "index_attachments_on_attachable_type_and_attachable_id"
  end

  create_table "questions", id: :serial, force: :cascade do |t|
    t.string "text", null: false
    t.integer "source_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["source_application_id"], name: "index_questions_on_source_application_id"
  end

  create_table "source_applications", id: :serial, force: :cascade do |t|
    t.string "year", null: false
    t.integer "source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["source_id"], name: "index_source_applications_on_source_id"
    t.index ["year"], name: "index_source_applications_on_year"
  end

  create_table "sources", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alternatives", "questions"
  add_foreign_key "questions", "source_applications"
  add_foreign_key "source_applications", "sources"
end
