FactoryGirl.define do
  factory :gross_sale, class: "Businesses::GrossSale" do
    amount "9.99"
    calendar_year "2016-11-07"
    business nil
  end
end
