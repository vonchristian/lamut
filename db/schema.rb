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

ActiveRecord::Schema.define(version: 20161110010410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "house_number"
    t.string   "building_name"
    t.string   "unit_number"
    t.string   "street"
    t.string   "subdivision"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "current",          default: false
    t.integer  "barangay_id"
    t.integer  "municipality_id"
    t.integer  "province_id"
    t.index ["addressable_id"], name: "index_addresses_on_addressable_id", using: :btree
    t.index ["addressable_type"], name: "index_addresses_on_addressable_type", using: :btree
    t.index ["municipality_id"], name: "index_addresses_on_municipality_id", using: :btree
    t.index ["province_id"], name: "index_addresses_on_province_id", using: :btree
  end

  create_table "barangays", force: :cascade do |t|
    t.integer  "municipality_id"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["municipality_id"], name: "index_barangays_on_municipality_id", using: :btree
  end

  create_table "business_activities", force: :cascade do |t|
    t.integer  "line_of_business_id"
    t.integer  "business_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["business_id"], name: "index_business_activities_on_business_id", using: :btree
    t.index ["line_of_business_id"], name: "index_business_activities_on_line_of_business_id", using: :btree
  end

  create_table "business_classifications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_taxes", force: :cascade do |t|
    t.decimal  "minimum_amount"
    t.decimal  "maximum_amount"
    t.decimal  "tax_amount"
    t.integer  "business_classification_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["business_classification_id"], name: "index_business_taxes_on_business_classification_id", using: :btree
  end

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.boolean  "has_tax_incentive"
    t.boolean  "franchise"
    t.integer  "taxpayer_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "business_classification_id"
    t.index ["taxpayer_id"], name: "index_businesses_on_taxpayer_id", using: :btree
  end

  create_table "fees", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.decimal  "amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "feeable_id"
    t.string   "feeable_type"
    t.index ["feeable_id"], name: "index_fees_on_feeable_id", using: :btree
    t.index ["feeable_type"], name: "index_fees_on_feeable_type", using: :btree
  end

  create_table "gross_sales", force: :cascade do |t|
    t.decimal  "amount"
    t.date     "calendar_year"
    t.integer  "business_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.decimal  "tax"
    t.index ["business_id"], name: "index_gross_sales_on_business_id", using: :btree
  end

  create_table "line_of_businesses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipalities", force: :cascade do |t|
    t.integer  "province_id"
    t.string   "name"
    t.integer  "zip_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["province_id"], name: "index_municipalities_on_province_id", using: :btree
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retirements", force: :cascade do |t|
    t.integer  "business_id"
    t.text     "remarks"
    t.datetime "retirement_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["business_id"], name: "index_retirements_on_business_id", using: :btree
  end

  create_table "taxpayers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "mobile_number"
    t.string   "email"
    t.date     "date_of_birth"
    t.integer  "sex"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "civil_status"
  end

  create_table "tins", force: :cascade do |t|
    t.integer  "taxpayer_id"
    t.string   "number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["taxpayer_id"], name: "index_tins_on_taxpayer_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "username"
    t.integer  "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "barangays", "municipalities"
  add_foreign_key "business_activities", "businesses"
  add_foreign_key "business_activities", "line_of_businesses"
  add_foreign_key "businesses", "taxpayers"
  add_foreign_key "gross_sales", "businesses"
  add_foreign_key "municipalities", "provinces"
  add_foreign_key "retirements", "businesses"
  add_foreign_key "tins", "taxpayers"
end
