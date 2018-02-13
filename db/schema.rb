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

ActiveRecord::Schema.define(:version => 20180208053011) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "manager_email"
    t.string   "placeid"
    t.string   "name_en"
    t.string   "name_he"
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.string   "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "community_leaderships", :force => true do |t|
    t.integer  "manager_id"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string  "iso"
    t.string  "name"
    t.string  "printable_name"
    t.string  "iso3"
    t.integer "numcode"
    t.integer "manager_id"
  end

  create_table "deleted_users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "type"
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
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.boolean  "strangers",                  :default => true
    t.text     "status"
    t.string   "contact"
    t.text     "survivor_details"
    t.float    "lat"
    t.float    "lng"
    t.datetime "date"
    t.boolean  "evening_public",             :default => true
    t.boolean  "hosted_before",              :default => false
    t.date     "event_date"
    t.string   "event_time"
    t.integer  "floor"
    t.boolean  "elevator"
    t.string   "org_name"
    t.string   "org_role"
    t.string   "event_language"
    t.boolean  "contacted",                  :default => false
    t.string   "phone"
    t.boolean  "survivor_needed"
    t.integer  "witness_id"
    t.text     "public_text"
    t.string   "concept"
    t.boolean  "received_registration_mail", :default => false
    t.boolean  "contacted_witness",          :default => false
    t.integer  "country_id"
    t.datetime "assignment_time"
    t.boolean  "preparation_evening",        :default => false
    t.boolean  "active",                     :default => true
  end

  add_index "hosts", ["city_id"], :name => "index_hosts_on_city_id"
  add_index "hosts", ["country_id"], :name => "index_hosts_on_country_id"

  create_table "invites", :force => true do |t|
    t.integer  "guest_id"
    t.integer  "host_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "confirmed",  :default => false
    t.integer  "plus_ones",  :default => 0
  end

  add_index "invites", ["guest_id"], :name => "index_invites_on_guest_id"
  add_index "invites", ["host_id"], :name => "index_invites_on_host_id"

  create_table "managers", :force => true do |t|
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "temp_email"
    t.string   "concept"
    t.boolean  "witness_only", :default => false
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
    t.boolean  "sub_admin",              :default => false
    t.integer  "previous_meta_id"
    t.string   "previous_meta_type"
    t.boolean  "active_this_year",       :default => true
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["meta_id", "meta_type"], :name => "index_users_on_meta_id_and_meta_type"
  add_index "users", ["meta_id"], :name => "index_users_on_meta_id"
  add_index "users", ["meta_type"], :name => "index_users_on_meta_type"
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
    t.text     "free_text"
    t.boolean  "special_population"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.boolean  "contacted",             :default => false
    t.boolean  "contacted_by_host",     :default => false
    t.boolean  "available_for_teaming", :default => true
    t.integer  "host_id"
    t.string   "concept"
    t.boolean  "can_morning"
    t.boolean  "can_afternoon"
    t.boolean  "can_evening"
    t.boolean  "free_on_day"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.boolean  "external_assignment",   :default => false
    t.string   "additional_phone"
    t.boolean  "available_day1"
    t.boolean  "available_day2"
    t.boolean  "available_day3"
    t.boolean  "available_day4"
    t.boolean  "available_day5"
    t.boolean  "available_day6"
    t.boolean  "archived",              :default => false
    t.boolean  "need_to_followup",      :default => false

  end

end
