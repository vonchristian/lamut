require 'rails_helper'

RSpec.describe RequiredDocuments::Issuance, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :required_document }
    it { is_expected.to belong_to :recipient }

  end

  describe "validations" do
    it { is_expected.to validate_presence_of :date_issued }
    it { is_expected.to validate_presence_of :expiry_date }
    it { is_expected.to validate_presence_of :reference_number }
    it { is_expected.to validate_uniqueness_of :reference_number }
  end
end
