FactoryGirl.define do
  factory :revocation, class: 'Businesses::Revocation' do
    revoked_at "2016-12-10 18:01:41"
    violation "Illegal logging"
    business nil
  end
end
