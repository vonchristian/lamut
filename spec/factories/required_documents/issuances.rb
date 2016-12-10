FactoryGirl.define do
  factory :issuance, class: "RequiredDocuments::Issuance" do
    required_document nil
    date_issued "2016-12-01"
    expiry_date "2016-12-01"
    reference_number "MyString"
    recipient_id nil
    recipient_type nil
  end
end
