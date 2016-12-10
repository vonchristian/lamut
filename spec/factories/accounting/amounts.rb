FactoryGirl.define do
  factory :amount, class: "Accounting::Amount" do
    type ""
    account nil
    entry nil
    amount "9.99"
  end
end
