[1mdiff --git a/app/models/required_document.rb b/app/models/required_document.rb[m
[1mindex e5318ec..081029f 100644[m
[1m--- a/app/models/required_document.rb[m
[1m+++ b/app/models/required_document.rb[m
[36m@@ -1,5 +1,5 @@[m
 class RequiredDocument < ApplicationRecord[m
[31m-  belongs_to :signatory[m
[32m+[m[32m  belongs_to :signatory, class_name: "HumanResources::Employee", foreign_key: "signatory_id"[m
   belongs_to :department[m
   has_many :issuances[m
 [m
[1mdiff --git a/app/models/requirement.rb b/app/models/requirement.rb[m
[1mdeleted file mode 100644[m
[1mindex a6c88af..0000000[m
[1m--- a/app/models/requirement.rb[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-class Requirement < ApplicationRecord[m
[31m-  belongs_to :business[m
[31m-  belongs_to :required_document[m
[31m-[m
[31m-end[m
[1mdiff --git a/app/models/signatory.rb b/app/models/signatory.rb[m
[1mindex 8d41644..a360ce2 100644[m
[1m--- a/app/models/signatory.rb[m
[1m+++ b/app/models/signatory.rb[m
[36m@@ -1,3 +1,3 @@[m
 class Signatory < ApplicationRecord[m
[31m-  belongs_to :document, as: :documentable[m
[32m+[m[32m  # belongs_to :document, as: :documentable[m
 end[m
[1mdiff --git a/db/schema.rb b/db/schema.rb[m
[1mindex 4c7de10..852da1a 100755[m
[1m--- a/db/schema.rb[m
[1m+++ b/db/schema.rb[m
[36m@@ -10,7 +10,7 @@[m
 #[m
 # It's strongly recommended that you check this file into your version control system.[m
 [m
[31m-ActiveRecord::Schema.define(version: 20161201081100) do[m
[32m+[m[32mActiveRecord::Schema.define(version: 20161209040037) do[m
 [m
   # These are extensions that must be enabled in order to support this database[m
   enable_extension "plpgsql"[m
[36m@@ -25,6 +25,15 @@[m [mActiveRecord::Schema.define(version: 20161201081100) do[m
     t.index ["code"], name: "index_accounts_on_code", using: :btree[m
   end[m
 [m
[32m+[m[32m  create_table "additional_requirements", force: :cascade do |t|[m
[32m+[m[32m    t.integer  "business_id"[m
[32m+[m[32m    t.integer  "required_document_id"[m
[32m+[m[32m    t.datetime "created_at",           null: false[m
[32m+[m[32m    t.datetime "updated_at",           null: false[m
[32m+[m[32m    t.index ["business_id"], name: "index_additional_requirements_on_business_id", using: :btree[m
[32m+[m[32m    t.index ["required_document_id"], name: "index_additional_requirements_on_required_document_id", using: :btree[m
[32m+[m[32m  end[m
[32m+[m
   create_table "addresses", force: :cascade do |t|[m
     t.integer  "addressable_id"[m
     t.string   "addressable_type"[m
[36m@@ -239,15 +248,26 @@[m [mActiveRecord::Schema.define(version: 20161201081100) do[m
   end[m
 [m
   create_table "required_documents", force: :cascade do |t|[m
[31m-    t.string   "reference_number"[m
[31m-    t.datetime "created_at",                       null: false[m
[31m-    t.datetime "updated_at",                       null: false[m
[31m-    t.integer  "taxpayer_id"[m
[31m-    t.boolean  "default",          default: false[m
[32m+[m[32m    t.datetime "created_at",                    null: false[m
[32m+[m[32m    t.datetime "updated_at",                    null: false[m
[32m+[m[32m    t.boolean  "default",       default: false[m
     t.string   "name"[m
     t.integer  "department_id"[m
[32m+[m[32m    t.integer  "signatory_id"[m
     t.index ["department_id"], name: "index_required_documents_on_department_id", using: :btree[m
[31m-    t.index ["taxpayer_id"], name: "index_required_documents_on_taxpayer_id", using: :btree[m
[32m+[m[32m    t.index ["signatory_id"], name: "index_required_documents_on_signatory_id", using: :btree[m
[32m+[m[32m  end[m
[32m+[m
[32m+[m[32m  create_table "requirements", force: :cascade do |t|[m
[32m+[m[32m    t.integer  "business_id"[m
[32m+[m[32m    t.integer  "required_document_id"[m
[32m+[m[32m    t.string   "reference_number"[m
[32m+[m[32m    t.date     "date_issued"[m
[32m+[m[32m    t.date     "expiry_date"[m
[32m+[m[32m    t.datetime "created_at",           null: false[m
[32m+[m[32m    t.datetime "updated_at",           null: false[m
[32m+[m[32m    t.index ["business_id"], name: "index_requirements_on_business_id", using: :btree[m
[32m+[m[32m    t.index ["required_document_id"], name: "index_requirements_on_required_document_id", using: :btree[m
   end[m
 [m
   create_table "retirements", force: :cascade do |t|[m
[36m@@ -340,6 +360,8 @@[m [mActiveRecord::Schema.define(version: 20161201081100) do[m
     t.index ["type"], name: "index_users_on_type", using: :btree[m
   end[m
 [m
[32m+[m[32m  add_foreign_key "additional_requirements", "businesses"[m
[32m+[m[32m  add_foreign_key "additional_requirements", "required_documents"[m
   add_foreign_key "barangays", "municipalities"[m
   add_foreign_key "business_activities", "businesses"[m
   add_foreign_key "business_activities", "line_of_businesses"[m
[36m@@ -352,6 +374,8 @@[m [mActiveRecord::Schema.define(version: 20161201081100) do[m
   add_foreign_key "mayors", "municipalities"[m
   add_foreign_key "municipalities", "provinces"[m
   add_foreign_key "required_documents", "departments"[m
[32m+[m[32m  add_foreign_key "requirements", "businesses"[m
[32m+[m[32m  add_foreign_key "requirements", "required_documents"[m
   add_foreign_key "retirements", "businesses"[m
   add_foreign_key "tins", "taxpayers"[m
   add_foreign_key "users", "departments"[m
[1mdiff --git a/spec/factories/requirements.rb b/spec/factories/requirements.rb[m
[1mdeleted file mode 100644[m
[1mindex 192cd25..0000000[m
[1m--- a/spec/factories/requirements.rb[m
[1m+++ /dev/null[m
[36m@@ -1,6 +0,0 @@[m
[31m-FactoryGirl.define do[m
[31m-  factory :requirement do[m
[31m-    business nil[m
[31m-    required_document nil[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/spec/models/required_document_spec.rb b/spec/models/required_document_spec.rb[m
[1mindex c7e7b5b..b0af883 100644[m
[1m--- a/spec/models/required_document_spec.rb[m
[1m+++ b/spec/models/required_document_spec.rb[m
[36m@@ -1,5 +1,11 @@[m
 require 'rails_helper'[m
 [m
 RSpec.describe RequiredDocument, type: :model do[m
[31m-  pending "add some examples to (or delete) #{__FILE__}"[m
[32m+[m[32m  describe "associations" do[m
[32m+[m[32m    it { is_expected.to belong_to :signatory }[m
[32m+[m[32m    it { is_expected.to belong_to :department }[m
[32m+[m[32m    it { is_expected.to have_many :issuances }[m
[32m+[m[32m  end[m
[32m+[m[32m  describe "delegations" do[m
[32m+[m[32m  end[m
 end[m
[1mdiff --git a/spec/models/requirement_spec.rb b/spec/models/requirement_spec.rb[m
[1mdeleted file mode 100644[m
[1mindex 73bc0c8..0000000[m
[1m--- a/spec/models/requirement_spec.rb[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-require 'rails_helper'[m
[31m-[m
[31m-RSpec.describe Requirement, type: :model do[m
[31m-  pending "add some examples to (or delete) #{__FILE__}"[m
[31m-end[m
