require 'rails_helper'

RSpec.describe Businesses::BusinessRequirement, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :required_document }
    it { is_expected.to belong_to :business }
  end

  describe "delegations" do
    it do
      is_expected.to delegate_method(:name).to(:required_document).with_prefix
    end

    it do
      is_expected.to delegate_method(:department_name).to(:required_document).with_prefix
    end
  end
  it ".set_default_requirements" do
    required_document1 = create(:required_document, default: true)
    required_document2 = create(:required_document, default: false)
    business = create(:business)
    BusinessRequirement.set_default_requirements(business)

    expect(business.required_documents).to include(required_document1)
    expect(business.required_documents).to_not include(required_document2)
  end
end
