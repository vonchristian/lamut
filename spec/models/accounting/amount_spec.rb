require 'rails_helper'

RSpec.describe Accounting::Amount, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :entry }
    it { is_expected.to belong_to :account }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :type }
    it { is_expected.to validate_presence_of :amount }
    it { is_expected.to validate_presence_of :entry }
    it { is_expected.to validate_presence_of :account }
  end
end
