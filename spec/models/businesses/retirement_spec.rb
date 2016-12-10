require 'rails_helper'

RSpec.describe Businesses::Retirement, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :business }
  end

  it ".revoked?" do
    business = create(:business)
    retirement = create(:retirement, business: business)
  end
end
