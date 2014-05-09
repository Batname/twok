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

ActiveRecord::Schema.define(version: 20140509063909) do

  create_table "comments", force: true do |t|
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.string   "other_attachment_file_name"
    t.string   "other_attachment_content_type"
    t.integer  "other_attachment_file_size"
    t.datetime "other_attachment_updated_at"
    t.string   "email"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "projects", force: true do |t|
    t.integer  "service_id"
    t.integer  "position"
    t.string   "name"
    t.string   "image"
    t.string   "permalink"
    t.boolean  "visible"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["permalink"], name: "index_projects_on_permalink"
  add_index "projects", ["service_id"], name: "index_projects_on_service_id"

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "service_translations", force: true do |t|
    t.integer  "service_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "title"
    t.text     "content"
  end

  add_index "service_translations", ["locale"], name: "index_service_translations_on_locale"
  add_index "service_translations", ["service_id"], name: "index_service_translations_on_service_id"

  create_table "services", force: true do |t|
    t.integer  "position"
    t.string   "name"
    t.string   "image"
    t.boolean  "visible"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "head_li"
    t.string   "head_div"
    t.string   "main_div"
  end

  create_table "teams", force: true do |t|
    t.integer  "position"
    t.string   "name"
    t.string   "image"
    t.boolean  "visible"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "teamclass"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
