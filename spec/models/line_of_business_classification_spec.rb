require 'rails_helper'

RSpec.describe LineOfBusinessClassification, type: :model do
  describe "associations" do
    it { is_expected.to have_many :line_of_businesses }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_uniqueness_of :name }
  end
end
