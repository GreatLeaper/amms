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

ActiveRecord::Schema.define(:version => 20131118024354) do

  create_table "colors", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hooks", :force => true do |t|
    t.string   "size",       :null => false
    t.string   "hook_type",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "hooks", ["hook_type", "size"], :name => "index_hooks_on_type_and_size"

  create_table "lure_hooks", :force => true do |t|
    t.integer "lure_id"
    t.integer "hook_id"
  end

  add_index "lure_hooks", ["hook_id"], :name => "index_lure_hooks_on_hook_id"
  add_index "lure_hooks", ["lure_id"], :name => "index_lure_hooks_on_lure_id"

  create_table "lures", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "weight"
    t.integer  "depth"
    t.integer  "bill_id"
    t.integer  "color_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
  end

end
