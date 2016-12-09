require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :department }
  end

  it "#first_name_and_last_name" do
    user = create(:user, first_name: "Von Christian", last_name: "Halip")

    expect(user.first_name_and_last_name).to eql("Von Christian Halip")
  end

  it "#name" do
    user = create(:user, first_name: "Von Christian", last_name: "Halip")

    expect(user.name).to eql("Von Christian Halip")
  end
end
