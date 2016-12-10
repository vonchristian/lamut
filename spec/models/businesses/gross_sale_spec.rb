require 'rails_helper'

RSpec.describe Businesses::GrossSale, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :business }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :amount }
    it { is_expected.to validate_presence_of :calendar_year }

    it do
      is_expected.to validate_numericality_of(:amount).is_greater_than(0.1)
    end
    it ".once_a_year" do
      business = create(:business)
      gross_sale1 = create(:gross_sale, calendar_year: Date.today, business: business)
      gross_sale2 = create(:gross_sale, calendar_year: Date.today, business: business)

      expect(gross_sale1).to be_valid
      expect(gross_sale2).to_not be_valid
    end
  end
end
