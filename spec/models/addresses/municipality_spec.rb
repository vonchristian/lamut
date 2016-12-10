require 'rails_helper'

RSpec.describe Addresses::Municipality, type: :model do
  describe "associations" do
    it { is_expected.to have_one :mayor }
    it { is_expected.to belong_to :province }
    it { is_expected.to have_many :barangays }
  end
end
