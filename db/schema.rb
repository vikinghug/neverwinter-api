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

ActiveRecord::Schema.define(version: 20161020171149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "builds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "klass_id"
    t.integer  "user_id"
  end

  add_index "builds", ["klass_id"], name: "index_builds_on_klass_id", using: :btree
  add_index "builds", ["user_id"], name: "index_builds_on_user_id", using: :btree

  create_table "klasses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paragons", force: :cascade do |t|
    t.string   "name"
    t.integer  "klass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "skill_id"
  end

  add_index "paragons", ["klass_id"], name: "index_paragons_on_klass_id", using: :btree
  add_index "paragons", ["skill_id"], name: "index_paragons_on_skill_id", using: :btree

  create_table "skill_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "klass_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skill_types", ["klass_id"], name: "index_skill_types_on_klass_id", using: :btree
  add_index "skill_types", ["skill_id"], name: "index_skill_types_on_skill_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "klass_id"
    t.integer  "paragon_id"
    t.integer  "points"
    t.integer  "row"
    t.integer  "slot"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "skill_type_id"
  end

  add_index "skills", ["klass_id"], name: "index_skills_on_klass_id", using: :btree
  add_index "skills", ["paragon_id"], name: "index_skills_on_paragon_id", using: :btree
  add_index "skills", ["skill_type_id"], name: "index_skills_on_skill_type_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "builds", "klasses"
  add_foreign_key "builds", "users"
  add_foreign_key "paragons", "klasses"
  add_foreign_key "paragons", "skills"
  add_foreign_key "skill_types", "klasses"
  add_foreign_key "skill_types", "skills"
  add_foreign_key "skills", "klasses"
  add_foreign_key "skills", "paragons"
  add_foreign_key "skills", "skill_types"
end
