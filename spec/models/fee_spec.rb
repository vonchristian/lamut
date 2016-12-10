require 'rails_helper'

RSpec.describe Fee, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :feeable }
  end

  it ".total" do
    fee1 = create(:fee, amount: 1)
    fee2 = create(:fee, amount: 10)

    expect(Fee.total).to eql(11.0)
  end

end
