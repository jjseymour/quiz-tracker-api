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

ActiveRecord::Schema.define(version: 20161026181412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.boolean  "correct?"
    t.text     "content"
    t.integer  "student_quiz_id"
    t.integer  "question_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
    t.index ["student_quiz_id"], name: "index_answers_on_student_quiz_id", using: :btree
  end

  create_table "cohorts", force: :cascade do |t|
    t.string   "student_named"
    t.string   "flatiron_named"
    t.integer  "expected_student_number"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "instructor_cohorts", force: :cascade do |t|
    t.integer  "instructor_id"
    t.integer  "cohort_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["cohort_id"], name: "index_instructor_cohorts_on_cohort_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.text     "content"
    t.boolean  "active?"
    t.integer  "quiz_id"
    t.string   "possible_answers", default: [],              array: true
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["quiz_id"], name: "index_questions_on_quiz_id", using: :btree
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "difficulty"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "student_quizzes", force: :cascade do |t|
    t.string   "grade"
    t.text     "notes"
    t.decimal  "data"
    t.integer  "quiz_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "graded"
    t.index ["quiz_id"], name: "index_student_quizzes_on_quiz_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "cohort_id"
    t.boolean  "instructor"
    t.string   "email"
    t.string   "password_digest"
    t.string   "all_instructor_emails", default: [],              array: true
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["cohort_id"], name: "index_users_on_cohort_id", using: :btree
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "student_quizzes"
  add_foreign_key "instructor_cohorts", "cohorts"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "student_quizzes", "quizzes"
  add_foreign_key "users", "cohorts"
end
