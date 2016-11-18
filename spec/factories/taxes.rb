FactoryGirl.define do
  factory :tax do
    taxable_id 1
    taxable_type "MyString"
    taxable_amount "9.99"
    tax_rate "9.99"
    tax_amount "9.99"
  end
end
