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

ActiveRecord::Schema.define(:version => 20140306185926) do

  create_table "accountteam", :id => false, :force => true do |t|
    t.string "accountnumber"
    t.string "agency"
    t.string "role"
    t.string "brand"
    t.string "username"
    t.string "newname"
  end

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.integer  "wizard_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "ExampleURL"
    t.string   "DisplayText"
    t.integer  "brand_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "orderingcolumn"
    t.string   "extended_text"
  end

  add_index "images", ["brand_id"], :name => "index_images_on_brand_id"

  create_table "question_sets", :force => true do |t|
    t.integer  "questionSetID"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "question_set_id"
    t.string   "questionText"
    t.string   "answerType"
    t.string   "answerOptions",   :limit => 10000
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "fieldname"
    t.string   "image_path"
    t.integer  "orderingcolumn"
    t.boolean  "required"
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
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "fieldname"
    t.integer  "wizard_option_id"
  end

end
