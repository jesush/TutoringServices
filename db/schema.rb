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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120914001209) do

  create_table "attendments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "tutoring_session_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "attendments", ["user_id", "tutoring_session_id"], :name => "index_attendments_on_user_id_and_tutoring_session_id", :unique => true

  create_table "courses", :force => true do |t|
    t.string   "course_type"
    t.integer  "number"
    t.string   "name"
    t.integer  "section_number"
    t.string   "days"
    t.string   "semester"
    t.integer  "year"
    t.string   "description"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "professor_id"
  end

  create_table "courses_users", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  create_table "tutoring_sessions", :force => true do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.date     "date"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tutoring_sessions_users", :force => true do |t|
    t.integer "tutoring_session_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nick_name"
    t.string   "user_type"
    t.string   "classification"
    t.string   "phone_number"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "email",                      :default => "", :null => false
    t.string   "encrypted_password",         :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "profile_image_file_name"
    t.string   "profile_image_content_type"
    t.integer  "profile_image_file_size"
    t.datetime "profile_image_updated_at"
    t.boolean  "volunteering"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
