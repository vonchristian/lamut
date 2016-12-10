require 'rails_helper'

RSpec.describe RequiredDocument, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :signatory }
    it { is_expected.to belong_to :department }
    it { is_expected.to have_many :issuances }
  end
  describe "delegations" do
    it do
      is_expected.to delegate_method(:name).to(:department).with_prefix
    end
  end
  
  describe "scoping" do
    it ".default" do
      required_document1 = create(:required_document, default: true)
      required_document2 = create(:required_document, default: false)

      expect(RequiredDocument.default).to include(required_document1)
      expect(RequiredDocument.default).to_not include(required_document2)
    end

    it ".not_default" do
      required_document1 = create(:required_document, default: true)
      required_document2 = create(:required_document, default: false)

      expect(RequiredDocument.not_default).to include(required_document2)
      expect(RequiredDocument.not_default).to_not include(required_document1)
    end
  end

end
