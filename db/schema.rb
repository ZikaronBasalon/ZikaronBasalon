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

ActiveRecord::Schema.define(version: 20190307221712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name",                        limit: 255
    t.integer  "region_id"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "manager_email",               limit: 255
    t.string   "placeid",                     limit: 255
    t.string   "name_en",                     limit: 255
    t.string   "name_he",                     limit: 255
    t.integer  "community_leaderships_count",             default: 0
    t.integer  "israel_city_id"
    t.integer  "country_id"
    t.integer  "world_city_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type", limit: 255
    t.string   "user_id",          limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "community_leaderships", force: :cascade do |t|
    t.integer  "manager_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string  "iso",            limit: 255
    t.string  "name",           limit: 255
    t.string  "printable_name", limit: 255
    t.string  "iso3",           limit: 255
    t.integer "numcode"
    t.integer "manager_id"
    t.integer "regions_count",              default: 0
  end

  create_table "deleted_users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "email",          limit: 255
    t.string   "phone",          limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "name",           limit: 255
    t.integer  "num_of_friends"
  end

  create_table "hosts", force: :cascade do |t|
    t.string   "address",                    limit: 255
    t.integer  "city_id"
    t.integer  "max_guests"
    t.text     "free_text"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.boolean  "strangers",                              default: true
    t.text     "status"
    t.string   "contact",                    limit: 255
    t.text     "survivor_details"
    t.float    "lat"
    t.float    "lng"
    t.datetime "date"
    t.boolean  "evening_public",                         default: true
    t.boolean  "hosted_before",                          default: false
    t.date     "event_date"
    t.string   "event_time",                 limit: 255
    t.integer  "floor"
    t.boolean  "elevator"
    t.string   "org_name",                   limit: 255
    t.string   "org_role",                   limit: 255
    t.string   "event_language",             limit: 255, default: "hebrew"
    t.boolean  "contacted",                              default: false
    t.string   "phone",                      limit: 255
    t.boolean  "survivor_needed",                        default: false
    t.integer  "witness_id"
    t.text     "public_text"
    t.string   "concept",                    limit: 255
    t.boolean  "received_registration_mail",             default: false
    t.boolean  "contacted_witness",                      default: false
    t.integer  "country_id"
    t.datetime "assignment_time"
    t.boolean  "preparation_evening",                    default: false
    t.boolean  "active",                                 default: true
    t.integer  "invites_pending_count",                  default: 0
    t.integer  "invites_confirmed_count",                default: 0
    t.boolean  "active_last_year"
    t.boolean  "preparation_wanted"
  end

  add_index "hosts", ["city_id"], name: "index_hosts_on_city_id", using: :btree
  add_index "hosts", ["country_id"], name: "index_hosts_on_country_id", using: :btree

  create_table "invites", force: :cascade do |t|
    t.integer  "guest_id"
    t.integer  "host_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "confirmed",  default: false
    t.integer  "plus_ones",  default: 0
  end

  add_index "invites", ["guest_id"], name: "index_invites_on_guest_id", using: :btree
  add_index "invites", ["host_id"], name: "index_invites_on_host_id", using: :btree

  create_table "israel_cities", force: :cascade do |t|
    t.integer  "city_identifier"
    t.string   "city_name_he"
    t.string   "city_name_en"
    t.integer  "city_id"
    t.integer  "region_id"
    t.integer  "israel_region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "israel_regions", force: :cascade do |t|
    t.integer  "identifier"
    t.string   "napa_name"
    t.string   "lishka_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", force: :cascade do |t|
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "temp_email",   limit: 255
    t.string   "concept",      limit: 255
    t.boolean  "witness_only",             default: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                   limit: 255, default: "",    null: false
    t.string   "encrypted_password",      limit: 255, default: "",    null: false
    t.string   "reset_password_token",    limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",      limit: 255
    t.string   "last_sign_in_ip",         limit: 255
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "full_name",               limit: 255
    t.string   "phone",                   limit: 255
    t.boolean  "admin",                               default: false
    t.integer  "meta_id"
    t.string   "meta_type",               limit: 255
    t.boolean  "sub_admin",                           default: false
    t.integer  "previous_meta_id"
    t.string   "previous_meta_type",      limit: 255
    t.boolean  "active_this_year",                    default: true
    t.boolean  "current_year_admin",                  default: false
    t.string   "locale",                  limit: 255
    t.datetime "agreed_to_terms_at"
    t.boolean  "subscribed_to_marketing"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["meta_id", "meta_type"], name: "index_users_on_meta_id_and_meta_type", using: :btree
  add_index "users", ["meta_id"], name: "index_users_on_meta_id", using: :btree
  add_index "users", ["meta_type"], name: "index_users_on_meta_type", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", null: false
    t.integer "foreign_key_id"
    t.string  "foreign_type"
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id", "foreign_type"], name: "index_version_associations_on_foreign_key", using: :btree
  add_index "version_associations", ["version_id"], name: "index_version_associations_on_version_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",      limit: 255, null: false
    t.integer  "item_id",                    null: false
    t.string   "event",          limit: 255, null: false
    t.string   "whodunnit",      limit: 255
    t.text     "object"
    t.datetime "created_at"
    t.integer  "transaction_id"
    t.text     "object_changes"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  add_index "versions", ["transaction_id"], name: "index_versions_on_transaction_id", using: :btree

  create_table "witnesses", force: :cascade do |t|
    t.string   "full_name",             limit: 255
    t.string   "address",               limit: 255
    t.integer  "city_id"
    t.string   "witness_type",          limit: 255
    t.string   "language",              limit: 255, default: "hebrew"
    t.string   "email",                 limit: 255
    t.string   "phone",                 limit: 255
    t.boolean  "stairs",                            default: false
    t.text     "special_needs"
    t.boolean  "seminar_required"
    t.text     "free_text"
    t.boolean  "special_population",                default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.boolean  "contacted",                         default: false
    t.boolean  "contacted_by_host",                 default: false
    t.boolean  "available_for_teaming",             default: true
    t.integer  "host_id"
    t.string   "concept",               limit: 255
    t.boolean  "can_morning"
    t.boolean  "can_afternoon"
    t.boolean  "can_evening"
    t.boolean  "free_on_day"
    t.string   "contact_name",          limit: 255
    t.string   "contact_phone",         limit: 255
    t.boolean  "external_assignment",               default: false
    t.string   "additional_phone",      limit: 255
    t.boolean  "available_day1"
    t.boolean  "available_day2"
    t.boolean  "available_day3"
    t.boolean  "available_day4"
    t.boolean  "available_day5"
    t.boolean  "available_day6"
    t.boolean  "archived",                          default: false
    t.boolean  "need_to_followup",                  default: false
    t.boolean  "active_last_year"
    t.boolean  "available_day7"
    t.boolean  "available_day8"
    t.boolean  "available_day9"
    t.string   "how_brought"
  end

  create_table "world_cities", force: :cascade do |t|
    t.string   "city_name"
    t.string   "city_ascii_name"
    t.float    "lat"
    t.float    "lng"
    t.text     "country_name"
    t.text     "state"
    t.integer  "internal_id"
    t.integer  "city_id"
    t.integer  "country_id"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
