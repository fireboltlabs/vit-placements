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

ActiveRecord::Schema.define(version: 20140912025327) do

  create_table "bteches", force: true do |t|
    t.integer  "student_id"
    t.integer  "one_one_marks"
    t.float    "one_one_perc"
    t.integer  "one_one_backlogs"
    t.integer  "one_two_marks"
    t.float    "one_two_perc"
    t.integer  "one_two_backlogs"
    t.integer  "two_one_marks"
    t.float    "two_one_perc"
    t.integer  "two_one_backlogs"
    t.integer  "two_two_marks"
    t.float    "two_two_perc"
    t.integer  "two_two_backlogs"
    t.integer  "three_one_marks"
    t.float    "three_one_perc"
    t.integer  "three_one_backlogs"
    t.integer  "three_two_marks"
    t.float    "three_two_perc"
    t.integer  "three_two_backlogs"
    t.float    "total_perc"
    t.integer  "active_backlogs"
    t.integer  "backlogs_history"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "branch"
    t.integer  "four_one_marks"
    t.integer  "four_one_perc"
    t.integer  "four_one_backlogs"
    t.integer  "four_two_marks"
    t.integer  "four_two_perc"
    t.integer  "four_two_backlogs"
  end

  add_index "bteches", ["student_id"], name: "index_bteches_on_student_id"

  create_table "inter_or_diplomos", force: true do |t|
    t.integer  "student_id"
    t.string   "board"
    t.string   "clz_name"
    t.integer  "year"
    t.integer  "marks"
    t.float    "perc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inter_or_diplomos", ["student_id"], name: "index_inter_or_diplomos_on_student_id"

  create_table "sscs", force: true do |t|
    t.integer  "student_id"
    t.string   "board"
    t.string   "school_name"
    t.integer  "year"
    t.integer  "marks"
    t.float    "perc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sscs", ["student_id"], name: "index_sscs_on_student_id"

  create_table "students", force: true do |t|
    t.string   "regd_no"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "father_name"
    t.string   "email"
    t.integer  "mobile"
    t.integer  "father_mobile"
    t.boolean  "placement"
    t.boolean  "jkc"
    t.boolean  "civils"
    t.boolean  "further_studies"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.string   "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "emcet_rank"
  end

  create_table "updates", force: true do |t|
    t.string   "user_name"
    t.string   "title"
    t.text     "post"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
