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

ActiveRecord::Schema.define(version: 20161209040037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "code"
    t.string   "type"
    t.string   "name",                       null: false
    t.boolean  "contra",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["code"], name: "index_accounts_on_code", using: :btree
  end

  create_table "additional_requirements", force: :cascade do |t|
    t.integer  "business_id"
    t.integer  "required_document_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["business_id"], name: "index_additional_requirements_on_business_id", using: :btree
    t.index ["required_document_id"], name: "index_additional_requirements_on_required_document_id", using: :btree
  end

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

  create_table "amounts", force: :cascade do |t|
    t.string   "type"
    t.integer  "account_id"
    t.integer  "entry_id"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id", "entry_id"], name: "index_amounts_on_account_id_and_entry_id", using: :btree
    t.index ["account_id"], name: "index_amounts_on_account_id", using: :btree
    t.index ["entry_id", "account_id"], name: "index_amounts_on_entry_id_and_account_id", using: :btree
    t.index ["entry_id"], name: "index_amounts_on_entry_id", using: :btree
    t.index ["type"], name: "index_amounts_on_type", using: :btree
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

  create_table "business_requirements", force: :cascade do |t|
    t.integer  "required_document_id"
    t.integer  "business_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["business_id"], name: "index_business_requirements_on_business_id", using: :btree
    t.index ["required_document_id"], name: "index_business_requirements_on_required_document_id", using: :btree
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
    t.integer  "mode_of_payment_id"
    t.index ["mode_of_payment_id"], name: "index_businesses_on_mode_of_payment_id", using: :btree
    t.index ["taxpayer_id"], name: "index_businesses_on_taxpayer_id", using: :btree
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.string   "reference_number"
    t.datetime "date"
    t.integer  "entriable_id"
    t.string   "entriable_type"
    t.string   "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "recorder_id"
    t.index ["entriable_id"], name: "index_entries_on_entriable_id", using: :btree
    t.index ["entriable_type"], name: "index_entries_on_entriable_type", using: :btree
    t.index ["recorder_id"], name: "index_entries_on_recorder_id", using: :btree
  end

  create_table "fees", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.decimal  "amount"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "feeable_id"
    t.string   "feeable_type"
    t.boolean  "default",      default: false
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

  create_table "issuances", force: :cascade do |t|
    t.integer  "required_document_id"
    t.date     "date_issued"
    t.date     "expiry_date"
    t.string   "reference_number"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["recipient_id"], name: "index_issuances_on_recipient_id", using: :btree
    t.index ["recipient_type"], name: "index_issuances_on_recipient_type", using: :btree
    t.index ["required_document_id"], name: "index_issuances_on_required_document_id", using: :btree
  end

  create_table "line_of_business_classifications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_of_businesses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "line_of_business_classification_id"
    t.index ["line_of_business_classification_id"], name: "index_line_of_businesses_on_line_of_business_classification_id", using: :btree
  end

  create_table "mayors", force: :cascade do |t|
    t.integer  "municipality_id"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["municipality_id"], name: "index_mayors_on_municipality_id", using: :btree
  end

  create_table "mode_of_payments", force: :cascade do |t|
    t.string   "name"
    t.integer  "recurrence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipalities", force: :cascade do |t|
    t.integer  "province_id"
    t.string   "name"
    t.integer  "zip_code"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.index ["province_id"], name: "index_municipalities_on_province_id", using: :btree
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.string   "searchable_type"
    t.integer  "searchable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "required_documents", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "default",       default: false
    t.string   "name"
    t.integer  "department_id"
    t.integer  "signatory_id"
    t.index ["department_id"], name: "index_required_documents_on_department_id", using: :btree
    t.index ["signatory_id"], name: "index_required_documents_on_signatory_id", using: :btree
  end

  create_table "requirements", force: :cascade do |t|
    t.integer  "business_id"
    t.integer  "required_document_id"
    t.string   "reference_number"
    t.date     "date_issued"
    t.date     "expiry_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["business_id"], name: "index_requirements_on_business_id", using: :btree
    t.index ["required_document_id"], name: "index_requirements_on_required_document_id", using: :btree
  end

  create_table "retirements", force: :cascade do |t|
    t.integer  "business_id"
    t.text     "remarks"
    t.datetime "retirement_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["business_id"], name: "index_retirements_on_business_id", using: :btree
  end

  create_table "signatories", force: :cascade do |t|
    t.integer  "documentable_id"
    t.string   "documentable_type"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "position"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["documentable_id"], name: "index_signatories_on_documentable_id", using: :btree
    t.index ["documentable_type"], name: "index_signatories_on_documentable_type", using: :btree
  end

  create_table "taxes", force: :cascade do |t|
    t.integer  "taxable_id"
    t.string   "taxable_type"
    t.decimal  "taxable_amount"
    t.decimal  "tax_rate"
    t.decimal  "tax_amount"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["taxable_id"], name: "index_taxes_on_taxable_id", using: :btree
    t.index ["taxable_type"], name: "index_taxes_on_taxable_type", using: :btree
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
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "mobile"
    t.string   "type"
    t.integer  "department_id"
    t.index ["department_id"], name: "index_users_on_department_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["type"], name: "index_users_on_type", using: :btree
  end

  add_foreign_key "additional_requirements", "businesses"
  add_foreign_key "additional_requirements", "required_documents"
  add_foreign_key "barangays", "municipalities"
  add_foreign_key "business_activities", "businesses"
  add_foreign_key "business_activities", "line_of_businesses"
  add_foreign_key "business_requirements", "businesses"
  add_foreign_key "business_requirements", "required_documents"
  add_foreign_key "businesses", "taxpayers"
  add_foreign_key "gross_sales", "businesses"
  add_foreign_key "issuances", "required_documents"
  add_foreign_key "line_of_businesses", "line_of_business_classifications"
  add_foreign_key "mayors", "municipalities"
  add_foreign_key "municipalities", "provinces"
  add_foreign_key "required_documents", "departments"
  add_foreign_key "requirements", "businesses"
  add_foreign_key "requirements", "required_documents"
  add_foreign_key "retirements", "businesses"
  add_foreign_key "tins", "taxpayers"
  add_foreign_key "users", "departments"
end
