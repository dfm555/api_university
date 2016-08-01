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

ActiveRecord::Schema.define(version: 20160801215605) do

  create_table "careers", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "quantity_credits", default: 1
    t.decimal  "amount",           default: 0.0
    t.integer  "semester",         default: 1
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "careers_subjects", id: false, force: :cascade do |t|
    t.integer "career_id"
    t.integer "subject_id"
  end

  add_index "careers_subjects", ["career_id"], name: "index_careers_subjects_on_career_id"
  add_index "careers_subjects", ["subject_id"], name: "index_careers_subjects_on_subject_id"

  create_table "inscriptions", force: :cascade do |t|
    t.integer  "student"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "inscriptions", ["subject_id"], name: "index_inscriptions_on_subject_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "credits",     default: 0
    t.string   "cycle"
    t.string   "room"
    t.text     "description"
    t.integer  "hours",       default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "teacher_careers", force: :cascade do |t|
    t.integer  "teacher"
    t.integer  "career_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teacher_careers", ["career_id"], name: "index_teacher_careers_on_career_id"

  create_table "tokens", force: :cascade do |t|
    t.string   "name"
    t.string   "token"
    t.integer  "number_of_requests", default: 0
    t.boolean  "status",             default: true
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
