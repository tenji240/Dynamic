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

ActiveRecord::Schema.define(version: 20140722215637) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.string   "school"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rank"
    t.integer  "resume_id"
  end

  add_index "educations", ["resume_id"], name: "index_educations_on_resume_id"

  create_table "experiences", force: true do |t|
    t.string   "position"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "description"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.integer  "user_id"
  end

  add_index "experiences", ["resume_id"], name: "index_experiences_on_resume_id"
  add_index "experiences", ["user_id"], name: "index_experiences_on_user_id"

  create_table "postings", force: true do |t|
    t.string   "skills"
    t.text     "description"
    t.string   "experience"
    t.string   "postition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  add_index "postings", ["company_id"], name: "index_postings_on_company_id"

  create_table "resumes", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "career_statement"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "posting_id"
  end

  add_index "resumes", ["posting_id"], name: "index_resumes_on_posting_id"

  create_table "skills", force: true do |t|
    t.string   "name"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.integer  "user_id"
  end

  add_index "skills", ["resume_id"], name: "index_skills_on_resume_id"
  add_index "skills", ["user_id"], name: "index_skills_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "career_statement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
