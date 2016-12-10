require 'rails_helper'

describe Businesses::Revocation, type: :model do

  describe "associations" do
    it { is_expected.to belong_to :business }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :revoked_at }
    it { is_expected.to validate_presence_of :violation }
  end

  it ".revoked?" do
    business = create(:business)
    revocation = create(:revocation, business: business)

    expect(business.revoked?).to be true
  end
end
