require 'rails_helper'

RSpec.describe Taxpayer, type: :model do
  describe "associations" do
    it { is_expected.to have_one :tin }
    it { is_expected.to have_many :addresses }
    it { is_expected.to have_many :businesses }
  end

  describe "photo_attachment" do
    it { should have_attached_file(:photo) }
    it { should validate_attachment_content_type(:photo).allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
  end

  describe "nested_attributes" do
    it { is_expected.to accept_nested_attributes_for(:addresses) }
  end

  it "#full_name" do
    taxpayer = build(:taxpayer, first_name: "Von", middle_name: "Pinosan", last_name: "Halip")

    expect(taxpayer.full_name).to eql "Von Pinosan Halip"
  end

  it "#first_name_and_last_name" do
    taxpayer = build(:taxpayer, first_name: "Von", middle_name: "Pinosan", last_name: "Halip")

    expect(taxpayer.first_name_and_last_name).to eql "Von Halip"
  end

  it "#name" do
    taxpayer = build(:taxpayer, first_name: "Von", middle_name: "Pinosan", last_name: "Halip")

    expect(taxpayer.name).to eql "Von Halip"
  end
  it "#current_address" do
    taxpayer = create(:taxpayer, first_name: "Von", middle_name: "Pinosan", last_name: "Halip")
    municipality = create(:municipality, name: "Lagawe")
    barangay = create(:barangay, name: "Poblacion West", municipality: municipality)
    province = create(:province, name: "Ifugao")

    address = create(:address, addressable: taxpayer, house_number: "01", unit_number: "02", building_name: "ITW", street: "Dullagan", barangay: barangay, municipality: municipality, province: province, current: true)

    expect(taxpayer.current_address).to eql "01 02 ITW Dullagan, Poblacion West, Lagawe, Ifugao"
  end
end
