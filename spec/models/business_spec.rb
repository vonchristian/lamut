require 'rails_helper'

RSpec.describe Business, type: :model do
  describe "associations" do
    it { is_expected.to have_one :retirement }
    it { is_expected.to belong_to :taxpayer }
    it { is_expected.to belong_to :business_classification }
    it { is_expected.to belong_to :mode_of_payment }
    it { is_expected.to have_many :business_activities }
    it { is_expected.to have_many :line_of_businesses }
    it { is_expected.to have_many :mayors_permit_fees }
    it { is_expected.to have_many :gross_sales }
  end

  describe "validations" do
  end

  describe "delegations" do
   it { should delegate_method(:name).to(:business_classification).with_prefix(true) }
   it { should delegate_method(:name).to(:taxpayer).with_prefix(true) }
   it { should delegate_method(:retired?).to(:retirement) }


  end

  describe "nested attributes" do
    it { is_expected.to accept_nested_attributes_for(:addresses) }
    it { is_expected.to accept_nested_attributes_for(:business_activities) }
  end

  describe "logo_attachment" do
    it { should have_attached_file(:logo) }
    it { should validate_attachment_content_type(:logo).allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
  end

  it "#current_address" do
    business = create(:business)
    municipality = create(:municipality, name: "Lagawe")
    barangay = create(:barangay, name: "Poblacion West", municipality: municipality)
    province = create(:province, name: "Ifugao")

    address = create(:address, addressable: business, house_number: "01", unit_number: "02", building_name: "ITW", street: "Dullagan", barangay: barangay, municipality: municipality, province: province, current: true)

    expect(business.current_address).to eql "01 02 ITW Dullagan, Poblacion West, Lagawe, Ifugao"
  end
end
