FactoryGirl.define do
  factory :barangay, class: "Addresses::Barangay" do
    municipality nil
    name "Poblacion"
  end
end
