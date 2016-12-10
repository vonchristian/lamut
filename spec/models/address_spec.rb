require 'rails_helper'

RSpec.describe Address, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :addressable }
    it { is_expected.to belong_to :barangay }
    it { is_expected.to belong_to :municipality }
    it { is_expected.to belong_to :province }
  end

  it ".current" do
    current_address = create(:address, current: true )
    not_current_address = create(:address, current: false )

    expect(Address.current).to include(current_address)
    expect(Address.current).to_not include(not_current_address)
  end

  it "#address_details" do
    pending
  end
end
