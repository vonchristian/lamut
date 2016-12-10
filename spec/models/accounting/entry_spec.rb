require 'rails_helper'

RSpec.describe Accounting::Entry, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :entriable }
    it { is_expected.to belong_to :recorder }
    it { is_expected.to have_many :credit_amounts }
    it { is_expected.to have_many :debit_amounts }
    it { is_expected.to have_many :credit_accounts }
    it { is_expected.to have_many :debit_accounts }
  end
  describe 'validations' do
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :reference_number }
    it { is_expected.to validate_uniqueness_of :reference_number }
  end

  describe 'nested attributes' do
    it { is_expected.to accept_nested_attributes_for(:credit_amounts) }
    it { is_expected.to accept_nested_attributes_for(:debit_amounts) }
  end
end
