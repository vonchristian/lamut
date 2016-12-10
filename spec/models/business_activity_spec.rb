require 'rails_helper'

RSpec.describe BusinessActivity, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :line_of_business }
    it { is_expected.to belong_to :business }
  end

  describe "validations" do
    it do
      is_expected.to validate_uniqueness_of(:line_of_business_id).scoped_to(:business).with_message("Line of Business is already added")
    end
    it { is_expected.to validate_presence_of :line_of_business_id }
  end

  describe "delegations" do
    it { is_expected.to delegate_method(:name).to(:line_of_business).with_prefix }
    it { is_expected.to delegate_method(:mayors_permit_fee_amount).to(:line_of_business).with_prefix }
  end
end
