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

ActiveRecord::Schema.define(:version => 20160220102301) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "manager_email"
  end

  create_table "community_leaderships", :force => true do |t|
    t.integer  "manager_id"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "guests", :force => true do |t|
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "name"
    t.integer  "num_of_friends"
  end

  create_table "hosts", :force => true do |t|
    t.string   "address"
    t.integer  "city_id"
    t.integer  "max_guests"
    t.text     "free_text"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.boolean  "strangers",                       :default => true
    t.text     "status"
    t.boolean  "survivor_needed",  :limit => 255
    t.string   "contact"
    t.text     "survivor_details"
    t.float    "lat"
    t.float    "lng"
    t.datetime "date"
    t.boolean  "evening_public",                  :default => true
    t.boolean  "hosted_before",                   :default => false
    t.date     "event_date"
    t.string   "event_time"
    t.integer  "floor"
    t.boolean  "elevator"
    t.string   "org_name"
    t.string   "org_role"
    t.string   "event_language"
    t.boolean  "contacted",                       :default => false
    t.string   "phone"
    t.integer  "witness_id"
  end

  create_table "invites", :force => true do |t|
    t.integer  "guest_id"
    t.integer  "host_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "confirmed",  :default => false
  end

  create_table "managers", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "temp_email"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "full_name"
    t.string   "phone"
    t.boolean  "admin",                  :default => false
    t.integer  "meta_id"
    t.string   "meta_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["meta_id", "meta_type"], :name => "index_users_on_meta_id_and_meta_type"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "witnesses", :force => true do |t|
    t.string   "full_name"
    t.string   "address"
    t.integer  "city_id"
    t.string   "witness_type"
    t.string   "language"
    t.string   "email"
    t.string   "phone"
    t.boolean  "stairs"
    t.text     "special_needs"
    t.boolean  "seminar_required"
    t.boolean  "concept"
    t.text     "free_text"
    t.boolean  "special_population"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
