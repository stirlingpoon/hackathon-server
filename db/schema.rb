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

ActiveRecord::Schema.define(version: 20150831230410) do

  create_table "member_directory_profiles", force: :cascade do |t|
    t.integer "member_id"
    t.integer "uid"
    t.string  "department", limit: 255
    t.string  "org_unit",   limit: 255
    t.string  "attr_1",     limit: 255
    t.string  "attr_2",     limit: 255
  end

  create_table "member_skills", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "skill_id"
    t.decimal  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "member_skills", ["member_id"], name: "index_member_skills_on_member_id"
  add_index "member_skills", ["skill_id"], name: "index_member_skills_on_skill_id"

  create_table "members", force: :cascade do |t|
    t.string   "first_name",        limit: 255
    t.string   "last_name",         limit: 255
    t.string   "email",             limit: 255
    t.string   "password",          limit: 255
    t.string   "ext_directory_key", limit: 255
    t.string   "ext_photo_link",    limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "skill_votes", force: :cascade do |t|
    t.integer  "voting_member_id"
    t.integer  "target_member_skill_id"
    t.integer  "vote",                   default: 1
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "skill_votes", ["target_member_skill_id"], name: "index_skill_votes_on_target_member_skill_id"
  add_index "skill_votes", ["voting_member_id"], name: "index_skill_votes_on_voting_member_id"

  create_table "skills", force: :cascade do |t|
    t.string "name",        limit: 255
    t.string "description", limit: 255
  end

end
