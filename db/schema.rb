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

ActiveRecord::Schema.define(version: 20131221071209) do

  create_table "posts", force: true do |t|
    t.integer  "user_id",                    null: false
    t.string   "title",                      null: false
    t.text     "body",                       null: false
    t.boolean  "active",     default: false, null: false
    t.datetime "created_at"
    t.datetime "posted_at"
    t.string   "subtitle"
  end

  add_index "posts", ["active"], name: "index_posts_on_active", using: :btree
  add_index "posts", ["created_at"], name: "index_posts_on_created_at", using: :btree
  add_index "posts", ["title"], name: "index_posts_on_title", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",          null: false
    t.string   "email",         null: false
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "last_login_at"
  end

  add_index "users", ["alias"], name: "index_users_on_alias", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree

end
