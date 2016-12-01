FactoryGirl.define do
  factory :issuance do
    required_document nil
    date_issued "2016-12-01"
    expiry_date "2016-12-01"
    reference_number "MyString"
    issuance_id 1
    issuance_type "MyString"
  end
end
