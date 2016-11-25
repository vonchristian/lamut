require 'rails_helper'

RSpec.describe Municipality, type: :model do
  describe "associations" do
    it{ is_expected.to have_one :mayor }
  end
end
