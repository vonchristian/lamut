FactoryGirl.define do
  factory :business_activity, class: "Businesses::BusinessActivity" do
    line_of_business nil
    business nil
  end
end
