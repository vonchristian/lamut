FactoryGirl.define do
  factory :required_document do
    type ""
    date_issued "2016-11-29"
    expiry_date "2016-11-29"
    office_or_agency "MyString"
  end
end
