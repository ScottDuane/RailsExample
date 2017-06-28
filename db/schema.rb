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

ActiveRecord::Schema.define(version: 20170628164218) do

  create_table "plans", force: :cascade do |t|
    t.string "carrier",           null: false
    t.string "name",              null: false
    t.string "deductible",        null: false
    t.string "out_of_pocket_max", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "plan_id",         null: false
    t.integer "age",             null: false
    t.integer "region",          null: false
    t.float   "monthly_premium", null: false
  end

  add_index "prices", ["plan_id"], name: "index_prices_on_plan_id"

  create_table "regions", force: :cascade do |t|
    t.integer "zip_code", null: false
    t.integer "region",   null: false
  end

  create_table "users", force: :cascade do |t|
  end

end
