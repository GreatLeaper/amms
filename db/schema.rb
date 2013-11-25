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

ActiveRecord::Schema.define(:version => 20131125031818) do

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

  create_table "lure_types", :force => true do |t|
    t.string   "name",       :null => false
    t.decimal  "length"
    t.decimal  "weight"
    t.integer  "depth"
    t.integer  "bill_id"
    t.integer  "hook_id"
    t.integer  "color_id"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lures", :force => true do |t|
    t.string   "code",                            :null => false
    t.integer  "lure_type_id",                    :null => false
    t.integer  "color_id"
    t.boolean  "active",       :default => false
    t.string   "image"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "lures", ["code"], :name => "index_lures_on_code", :unique => true

end
