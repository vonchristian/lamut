FactoryGirl.define do
  factory :municipality, class: "Addresses::Municipality" do
    province nil
    name "Lamut"
    zip_code 1
  end
end
