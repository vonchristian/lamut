FactoryGirl.define do
  factory :business do
    name "MyString"
    has_tax_incentive false
    franchise false
    taxpayer nil
  end
end
