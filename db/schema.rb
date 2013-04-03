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

ActiveRecord::Schema.define(:version => 20130403135250) do

  create_table "hostel_wardens", :force => true do |t|
    t.string   "hostel"
    t.string   "warden_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "insurances", :force => true do |t|
    t.string   "policyno",   :limit => 30
    t.date     "sdate"
    t.date     "edate"
    t.string   "student_id", :limit => 30
    t.string   "password",   :limit => 30
    t.integer  "amount"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "leaves", :force => true do |t|
    t.string   "student_id"
    t.text     "reason"
    t.datetime "start"
    t.datetime "end"
    t.boolean  "approved"
    t.string   "warden_id"
    t.string   "consent"
    t.text     "levaddress"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "student_details", :force => true do |t|
    t.string   "student_id", :limit => 30
    t.string   "college_id", :limit => 30
    t.string   "name",       :limit => 30
    t.date     "dob"
    t.string   "sex",        :limit => 1
    t.string   "bloodgroup", :limit => 5
    t.string   "mobile",     :limit => 14
    t.string   "email"
    t.string   "fname",      :limit => 30
    t.string   "mname",      :limit => 30
    t.string   "feepayingP", :limit => 30
    t.string   "relation",   :limit => 2
    t.date     "pdob"
    t.string   "psex",       :limit => 2
    t.string   "pmobile",    :limit => 14
    t.string   "plandline",  :limit => 14
    t.string   "pmail"
    t.string   "hostel",     :limit => 5
    t.string   "room",       :limit => 5
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",                   :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.string   "username"
    t.string   "role"
    t.string   "name",                   :limit => 30
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
