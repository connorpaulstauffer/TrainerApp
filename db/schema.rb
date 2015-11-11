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

ActiveRecord::Schema.define(version: 20151111142339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "membership_request_responses", force: :cascade do |t|
    t.integer  "membership_request_id", null: false
    t.integer  "user_id"
    t.integer  "trainer_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "membership_request_responses", ["membership_request_id"], name: "index_membership_request_responses_on_membership_request_id", using: :btree
  add_index "membership_request_responses", ["trainer_id"], name: "index_membership_request_responses_on_trainer_id", using: :btree
  add_index "membership_request_responses", ["user_id"], name: "index_membership_request_responses_on_user_id", using: :btree

  create_table "membership_requests", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "trainer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "memberships", ["trainer_id"], name: "index_memberships_on_trainer_id", using: :btree
  add_index "memberships", ["user_id"], name: "index_memberships_on_user_id", using: :btree

  create_table "trainers", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "trainers", ["user_id"], name: "index_trainers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["first_name"], name: "index_users_on_first_name", using: :btree
  add_index "users", ["last_name"], name: "index_users_on_last_name", using: :btree

end
