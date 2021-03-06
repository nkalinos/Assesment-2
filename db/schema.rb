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

ActiveRecord::Schema.define(version: 20150518213718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.string   "description"
    t.integer  "price"
    t.integer  "industry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["industry_id"], name: "index_companies_on_industry_id", using: :btree

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries_companies_joins", id: false, force: :cascade do |t|
    t.integer "company_id"
    t.integer "industry_id"
  end

  add_index "industries_companies_joins", ["company_id"], name: "index_industries_companies_joins_on_company_id", using: :btree
  add_index "industries_companies_joins", ["industry_id"], name: "index_industries_companies_joins_on_industry_id", using: :btree

  add_foreign_key "companies", "industries"
end
