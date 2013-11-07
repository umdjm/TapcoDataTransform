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

ActiveRecord::Schema.define(:version => 20131107183100) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.integer  "wizard_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "question_sets", :force => true do |t|
    t.integer  "questionSetID"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "question_set_id"
    t.string   "questionText"
    t.string   "answerType"
    t.string   "answerOptions"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "fieldname"
    t.string   "image_path"
    t.integer  "orderingcolumn"
  end

  create_table "wizard_options", :force => true do |t|
    t.integer  "wizard_id"
    t.string   "title"
    t.string   "image_path"
    t.integer  "next_wizard_id"
    t.integer  "questionSet_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "fieldname"
  end

  create_table "wizards", :force => true do |t|
    t.string   "title"
    t.integer  "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "fieldname"
  end

end
