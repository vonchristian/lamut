require 'rails_helper'

RSpec.describe Mayor, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :municipality }
  end

  describe "photo_attachment" do
    it { should have_attached_file(:photo) }
    it { should validate_attachment_content_type(:photo).allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
  end

  it "#full_name" do
    mayor = build(:mayor, first_name: "Von", middle_name: "Pinosan", last_name: "Halip")

    expect(mayor.full_name).to eql("Von P. Halip")
  end

end
