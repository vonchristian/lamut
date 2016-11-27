require 'rails_helper'

RSpec.describe Taxes::BusinessTax, type: :model do
  before(:each) do
    Rails.application.load_seed
  end

  describe "associations" do
    it { is_expected.to belong_to :business_classification }
  end

  describe ".tax_for_manufacturers_assemblers_repackers_processors_brewers_distillers_rectifiers_and_compounders_of_liquors_distilled_spirits_and_wines_or_manufacturers_of_any_article_of_commerce_of_whatever_kind_in_nature" do

    it "returns 181.50 when gross sale is less than 10_000" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 9_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(tax).to eql(181.50)
    end
    it "returns 242.00 when gross sale is 10,000.00 or more but less than 15,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 10_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(242.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 14_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(242.00)
    end

    it "returns 332.20 when gross sale is 15,000.00 or more but less than 20,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 15_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(332.20)

      gross_sale2 = create(:gross_sale, business: business, amount: 19_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(332.20)
    end

    it "returns 484.00 when gross sale is 20,000.00 or more but less than 30,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 20_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(484.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 29_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(484.00)
    end

    it "returns 726.00 when gross sale is 30,000.00 or more but less than 40,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 30_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(726.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 39_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(726.00)
    end

    it "returns 907.50 when gross sale is 40,000.00 or more but less than 50,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 40_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(907.50)

      gross_sale2 = create(:gross_sale, business: business, amount: 49_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(907.50)
    end

    it "returns 1,452.00 when gross sale is 50,000.00 or more but less than  75,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 50_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(1452.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 74_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(1452.00)
    end

    it "returns 1,815.00 when gross sale is 75,000.00 or more but less than 100,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 75_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(1815.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 99_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(1815.00)
    end

    it "returns 2,420.00 when gross sale is 100,000.00 or more but less than 150,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 100_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(2420.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 149_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(2420.00)
    end

    it "returns 3,025.00 when gross sale is 150,000.00 or more but less than 200,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 150_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(3025.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 199_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(3025.00)
    end

    it "returns 4,235.00 when gross sale is 200,000.00 or more but less than 300,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 200_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(4235.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 299_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(4235.00)
    end

    it "returns 6,050.00 when gross sale is 300,000.00 or more but less than 500,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 300_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(6050.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 499_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(6050.00)
    end

    it "returns 8,800.00 when gross sale is 500,000.00 or more but less than 750,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 500_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(8800.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 749_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(8800.00)
    end

    it "returns 11,000.00 when gross sale is 750,000.00 or more but less than 1,000,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 750_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(11000.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 999_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(11000.00)
    end

    it "returns 15,125.00 when gross sale is 1,000,000.00 or more but less than 2,000,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 1_000_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(15_125.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 1_999_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(15_125.00)
    end

    it "returns 18,150.00 when gross sale is 2,000,000.00 or more but less than 3,000,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 2_000_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(18_150.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 2_999_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(18_150.00)
    end

    it "returns 21,780.00 when gross sale is 3,000,000.00 or more but less than 4,000,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 3_000_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(21_780.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 3_999_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(21_780.00)
    end

    it "returns 25,410.00 when gross sale is 4,000,000.00 or more but less than 5,000,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 4_000_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(25_410.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 4_999_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(25_410.00)
    end

    it "returns 26,812.50 when gross sale is 5,000,000.00 or more but less than 6,500,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 5_000_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(26_812.50)

      gross_sale2 = create(:gross_sale, business: business, amount: 6_499_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(26_812.50)
    end

    it "returns a rate not exceeding 37 ½  of 1% when gross sale is more  than 6,500,000.00" do
      business_classification = BusinessClassification.find_by_name "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 6_500_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(24_375.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 10_000_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(37_500.00)
    end
  end

  describe "tax_for_wholesalers_distributors_or_dealers_in_any_article_or_commerce_what_ever_in_kind_in_nature_or_accordance" do
    it "returns 19.80 when gross sale is less than 1,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 0.1 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(19.80)

      gross_sale2 = create(:gross_sale, business: business, amount: 999 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(19.80)
    end

    it "returns 36.30 when gross sale is 1,000.00 or more but less than 2,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 1_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(36.30)

      gross_sale2 = create(:gross_sale, business: business, amount: 1_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(36.30)
    end

    it "returns 55.00 when gross sale is 2,000.00 or more but less than 3,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 2_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(55.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 2_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(55.00)
    end

    it "returns 79.20 when gross sale is 3,000.00 or more but less than 4,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 3_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(79.20)

      gross_sale2 = create(:gross_sale, business: business, amount: 3_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(79.20)
    end

    it "returns 110.00 when gross sale is 4,000.00 or more but less than 5,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 4_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(110.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 4_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(110.00)
    end

    it "returns 133.10 when gross sale is 5,000.00 or more but less than 6,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 5_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(133.10)

      gross_sale2 = create(:gross_sale, business: business, amount: 5_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(133.10)
    end

    it "returns 157.30 when gross sale is 6,000.00 or more but less than 7,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 6_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(157.30)

      gross_sale2 = create(:gross_sale, business: business, amount: 6_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(157.30)
    end

    it "returns 181.50 when gross sale is 7,000.00 or more but less than 8,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 7_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(181.50)

      gross_sale2 = create(:gross_sale, business: business, amount: 7_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(181.50)
    end

    it "returns 205.70 when gross sale is 8,000.00 or more but less than 10,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 8_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(205.70)

      gross_sale2 = create(:gross_sale, business: business, amount: 9_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(205.70)
    end

    it "returns 242.00 when gross sale is 10,000.00 or more but less than 15,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 10_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(242.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 14_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(242.00)
    end

    it "returns 302.50 when gross sale is 15,000.00 or more but less than 20,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 15_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(302.50)

      gross_sale2 = create(:gross_sale, business: business, amount: 19_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(302.50)
    end

    it "returns 363.00 when gross sale is 20,000.00 or more but less than 30,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 20_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(363.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 29_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(363.00)
    end

    it "returns 484.00 when gross sale is 30,000.00 or more but less than 40,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 30_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(484.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 39_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(484.00)
    end

    it "returns 726.00 when gross sale is 40,000.00 or more but less than 50,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 40_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(726.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 49_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(726.00)
    end

    it "returns 1,089.00 when gross sale is 50,000.00 or more but less than 75,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 50_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(1_089.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 74_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(1_089.00)
    end

    it "returns 1,452.00 when gross sale is 75,000.00 or more but less than 100,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 75_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(1_452.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 99_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(1_452.00)
    end

    it "returns 2,057.00 when gross sale is 100,000.00 or more but less than 150,000.00 " do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 100_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(2_057.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 149_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(2_057.00)
    end

    it "returns 2,662.00 when gross sale is 150,000.00 or more but less than 200,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 150_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(2_662.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 199_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(2_662.00)
    end

    it "returns 3,630.00 when gross sale is 200,000.00 or more but less than 300,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 200_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(3_630.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 299_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(3_630.00)
    end

    it "returns 4,840.00 when gross sale is 300,000.00 or more but less than 500,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 300_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(4_840.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 499_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(4_840.00)
    end

    it "returns 7,260.00 when gross sale is 500,000.00 or more but less than 750,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 500_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(7_260.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 749_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(7_260.00)
    end

    it "returns 9,680.00 when gross sale is 750,000.00 or more but less than 1,000,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 750_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(9_680.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 999_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(9_680.00)
    end

    it "returns 11,000.00 when gross sale is 1,000,000.00 or more but less than 2,000,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 1_000_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(11_000.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 1_999_999.99 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(11_000.00)
    end

    it "returns a rate not exceeding 50% percent of 1% when gross sale is  more than 2,000,000.00" do
      business_classification = BusinessClassification.find_by_name "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 2_000_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(10_000.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 10_000_000.00 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(50_000.00)
    end
  end
  describe "tax_for_retailers" do
    it "returns a rate of 2% when gross sale is  less than or equal to 400,000.00" do
      business_classification = BusinessClassification.find_by_name "Retailers"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 30_000 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(600.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 400_000.00 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(8_000.00)
    end

    it "returns a rate of 1% when gross sale is  more than 400,000.00" do
      business_classification = BusinessClassification.find_by_name "Retailers"
      business = create(:business, business_classification: business_classification)
      gross_sale = create(:gross_sale, business: business, amount: 400_001 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale)
      gross_sale.tax = tax
      gross_sale.save
      expect(gross_sale.tax).to eql(8_000.01)

      gross_sale2 = create(:gross_sale, business: business, amount: 600_000.00 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(10_000.00)

      gross_sale2 = create(:gross_sale, business: business, amount: 800_000.00 )
      tax =  Taxes::BusinessTax.set_tax(gross_sale2)
      gross_sale2.tax = tax
      gross_sale2.save
      expect(gross_sale2.tax).to eql(12_000.00)
    end
  end


end
