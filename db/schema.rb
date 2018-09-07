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

ActiveRecord::Schema.define(version: 2018_09_07_134902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.integer "modality"
    t.integer "shift"
    t.string "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curriculums", force: :cascade do |t|
    t.integer "credits_needed"
    t.integer "min_credits_per_period"
    t.integer "max_credits_per_period"
    t.integer "min_periods"
    t.integer "max_periods"
    t.integer "max_credits_free_module"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.index ["course_id"], name: "index_curriculums_on_course_id"
  end

  create_table "curriculums_subjects", force: :cascade do |t|
    t.bigint "curriculum_id"
    t.bigint "subject_id"
    t.integer "enforcement", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curriculum_id"], name: "index_curriculums_subjects_on_curriculum_id"
    t.index ["subject_id"], name: "index_curriculums_subjects_on_subject_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flow_subjects", force: :cascade do |t|
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "flow_id"
    t.bigint "subject_id"
    t.index ["flow_id"], name: "index_flow_subjects_on_flow_id"
    t.index ["subject_id"], name: "index_flow_subjects_on_subject_id"
  end

  create_table "flows", force: :cascade do |t|
    t.bigint "curriculum_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curriculum_id"], name: "index_flows_on_curriculum_id"
  end

  create_table "offer_professors", force: :cascade do |t|
    t.bigint "professor_id"
    t.bigint "offer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_offer_professors_on_offer_id"
    t.index ["professor_id"], name: "index_offer_professors_on_professor_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "class_letter"
    t.integer "shift"
    t.integer "enrolled_count"
    t.integer "max_enrolled"
    t.integer "credits_theory"
    t.integer "credits_extension"
    t.integer "credits_pratical"
    t.integer "credits_study"
    t.boolean "obs1"
    t.boolean "obs2"
    t.boolean "obs3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subject_id"
    t.bigint "semester_id"
    t.index ["semester_id"], name: "index_offers_on_semester_id"
    t.index ["subject_id"], name: "index_offers_on_subject_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requirement_options", force: :cascade do |t|
    t.bigint "subject_id"
    t.bigint "requirement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requirement_id"], name: "index_requirement_options_on_requirement_id"
    t.index ["subject_id"], name: "index_requirement_options_on_subject_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_requirements_on_subject_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "period"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slots", force: :cascade do |t|
    t.string "location"
    t.integer "weekday"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "curriculums", "courses"
  add_foreign_key "curriculums_subjects", "curriculums"
  add_foreign_key "curriculums_subjects", "subjects"
  add_foreign_key "flow_subjects", "flows"
  add_foreign_key "flow_subjects", "subjects"
  add_foreign_key "flows", "curriculums"
  add_foreign_key "offer_professors", "offers"
  add_foreign_key "offer_professors", "professors"
  add_foreign_key "offers", "semesters"
  add_foreign_key "offers", "subjects"
  add_foreign_key "requirement_options", "requirements"
  add_foreign_key "requirement_options", "subjects"
  add_foreign_key "requirements", "subjects"
end
