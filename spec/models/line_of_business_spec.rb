require 'rails_helper'

RSpec.describe LineOfBusiness, type: :model do
  describe "associations" do
    it { is_expected.to have_one :mayors_permit_fee }
    it { is_expected.to have_many :business_activities }
    it { is_expected.to have_many :businesses }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_uniqueness_of :name }
  end

  describe "nested_attributes" do
    it { is_expected.to accept_nested_attributes_for(:mayors_permit_fee) }
  end

  describe "delegations" do
    it { is_expected.to delegate_method(:amount).to(:mayors_permit_fee).with_prefix }
  end

  it ".details" do
    line_of_business = create(:line_of_business, name: "First")
    line_of_business2 = create(:line_of_business, name: "Second")

    expect(LineOfBusiness.details).to eql("First, Second")
  end

  it "#name_and_fee" do
    line_of_business = build(:line_of_business, name: "Sari Sari Store")
    mayors_permit_fee = create(:mayors_permit_fee, amount: 600, feeable: line_of_business)

    expect(line_of_business.name_and_fee).to eql("Sari Sari Store 600.0")
  end

end
