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

ActiveRecord::Schema.define(:version => 20120902220359) do

  create_table "courses", :force => true do |t|
    t.string   "type"
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
  end

  create_table "tutoring_sessions", :force => true do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.date     "date"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nick_name"
    t.string   "type"
    t.string   "classification"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
