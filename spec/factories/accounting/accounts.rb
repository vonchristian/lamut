FactoryGirl.define do
  factory :account, class: "Accounting::Account" do
    code "MyString"
    type "asset"
    name "MyString"
    contra false
  end
end
