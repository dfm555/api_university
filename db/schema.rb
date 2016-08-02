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

ActiveRecord::Schema.define(version: 20160802043054) do

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
    t.integer "career_id",  null: false
    t.integer "subject_id", null: false
  end

  add_index "careers_subjects", ["career_id", "subject_id"], name: "index_careers_subjects_on_career_id_and_subject_id"
  add_index "careers_subjects", ["subject_id", "career_id"], name: "index_careers_subjects_on_subject_id_and_career_id"

  create_table "careers_teachers", id: false, force: :cascade do |t|
    t.integer  "career_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "careers_teachers", ["career_id"], name: "index_careers_teachers_on_career_id"
  add_index "careers_teachers", ["teacher_id"], name: "index_careers_teachers_on_teacher_id"

  create_table "students", force: :cascade do |t|
    t.string   "code"
    t.string   "identification"
    t.string   "full_name"
    t.date     "date_of_birth"
    t.string   "email"
    t.integer  "phone_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students_subjects", id: false, force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "students_subjects", ["student_id"], name: "index_students_subjects_on_student_id"
  add_index "students_subjects", ["subject_id"], name: "index_students_subjects_on_subject_id"

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

  create_table "teachers", force: :cascade do |t|
    t.string   "code"
    t.string   "identification"
    t.string   "full_name"
    t.date     "date_of_birth"
    t.string   "email"
    t.integer  "office"
    t.integer  "phone_number"
    t.decimal  "amount_hour",    default: 0.0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "teachers_subjects", id: false, force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teachers_subjects", ["subject_id"], name: "index_teachers_subjects_on_subject_id"
  add_index "teachers_subjects", ["teacher_id"], name: "index_teachers_subjects_on_teacher_id"

  create_table "tokens", force: :cascade do |t|
    t.string   "name"
    t.string   "token"
    t.integer  "number_of_requests", default: 0
    t.boolean  "status",             default: true
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
