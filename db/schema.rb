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

ActiveRecord::Schema.define(version: 20150218170555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.string   "material",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hooks", force: :cascade do |t|
    t.string   "size",       null: false
    t.string   "hook_type",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hooks", ["hook_type", "size"], name: "index_hooks_on_hook_type_and_size", using: :btree

  create_table "lure_types", force: :cascade do |t|
    t.string   "name",        null: false
    t.decimal  "length"
    t.decimal  "weight"
    t.integer  "depth"
    t.integer  "bill_id"
    t.integer  "hook_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "video_url"
  end

  create_table "lures", force: :cascade do |t|
    t.string   "code",                             null: false
    t.integer  "lure_type_id",                     null: false
    t.integer  "color_id"
    t.boolean  "active",           default: false
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "paypal_button_id"
  end

  add_index "lures", ["code"], name: "index_lures_on_code", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
