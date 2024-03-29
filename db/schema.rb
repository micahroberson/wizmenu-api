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

ActiveRecord::Schema.define(version: 20140327041141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "claims", force: true do |t|
    t.integer  "user_id"
    t.integer  "claim_number"
    t.date     "date"
    t.integer  "customer_id"
    t.integer  "unit_id"
    t.integer  "warranty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "address"
    t.string   "address_suite"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "email"
    t.string   "company"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "units", force: true do |t|
    t.string   "make"
    t.string   "model"
    t.string   "serial"
    t.text     "problem"
    t.string   "unit_type"
    t.string   "condition"
    t.string   "accessories"
    t.string   "location"
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
    t.string   "first_name",             default: ""
    t.string   "last_name",              default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "warranties", force: true do |t|
    t.boolean  "parts"
    t.float    "labor"
    t.string   "dealer"
    t.date     "purchase_date"
    t.string   "extended"
    t.string   "authorization"
    t.string   "policy"
    t.float    "rush"
    t.float    "deposit_one"
    t.string   "deposit_one_type"
    t.date     "deposit_one_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
