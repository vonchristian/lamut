require 'rails_helper'

RSpec.describe RequiredDocument, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :signatory }
    it { is_expected.to belong_to :department }
    it { is_expected.to have_many :issuances }
  end
  describe "delegations" do
  end
end
