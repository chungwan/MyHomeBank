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

ActiveRecord::Schema.define(:version => 20121008230438) do

  create_table "accounts", :force => true do |t|
    t.string   "ac_name"
    t.integer  "bank_id"
    t.integer  "kid_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.float    "bal_current"
    t.float    "bal_last"
    t.float    "last_tx"
    t.float    "rate"
    t.float    "int_eanred"
    t.integer  "time"
  end

  add_index "accounts", ["bank_id"], :name => "index_accounts_on_bank_id"
  add_index "accounts", ["kid_id"], :name => "index_accounts_on_kid_id"

  create_table "banks", :force => true do |t|
    t.string   "b_name"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "banks", ["parent_id"], :name => "index_banks_on_parent_id"

  create_table "kids", :force => true do |t|
    t.string   "k_name"
    t.string   "k_email"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "kids", ["parent_id"], :name => "index_kids_on_parent_id"

  create_table "parents", :force => true do |t|
    t.string   "p_name"
    t.string   "p_email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "account_id"
    t.integer  "day"
    t.float    "amount"
    t.float    "earned"
    t.float    "bal_begin"
    t.float    "bal_end"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "transactions", ["account_id"], :name => "index_transactions_on_account_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "person_type"
    t.integer  "person_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["person_id", "person_type"], :name => "index_users_on_person_id_and_person_type"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
