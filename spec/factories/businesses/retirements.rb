FactoryGirl.define do
  factory :retirement, class: "Businesses::Retirement" do
    business nil
    remarks "MyText"
    retirement_date "2016-11-07 21:24:26"
  end
end
