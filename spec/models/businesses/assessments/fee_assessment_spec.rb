require 'rails_helper'

RSpec.describe Businesses::Assessments::FeeAssessment, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :business }
    it { is_expected.to belong_to :entry }
    it { is_expected.to belong_to :assessor }
  end 
end
