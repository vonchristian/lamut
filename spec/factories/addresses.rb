FactoryGirl.define do
  factory :address do
    addresable_id 1
    addressable_type "MyString"
    house_number "MyString"
    building_name "MyString"
    unit_number "MyString"
    street "MyString"
    barangay_id 1
    subdivision "MyString"
    municipality_id 1
    province_id 1
  end
end
