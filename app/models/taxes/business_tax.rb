module Taxes
  class BusinessTax < ApplicationRecord
    belongs_to :business_classification, class_name: "Businesses::BusinessClassification"
    def self.set_tax(gross_sale)
      return tax_for_manufacturers_assemblers_repackers_processors_brewers_distillers_rectifiers_and_compounders_of_liquors_distilled_spirits_and_wines_or_manufacturers_of_any_article_of_commerce_of_whatever_kind_in_nature_in_excess_of_6_500_000(gross_sale) if gross_sale.business.business_classification_name == "Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature" && (6_500_000..Float::INFINITY).include?(gross_sale.amount.to_f)
      return tax_for_wholesalers_distributors_or_dealers_of_any_article_or_commerce_of_whatever_kind_or_nature_in_excess_of_2_000_000(gross_sale) if gross_sale.business.business_classification_name == "Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature" && (2_000_000..Float::INFINITY).include?(gross_sale.amount.to_f)
      return tax_for_retailers(gross_sale) if gross_sale.business.business_classification_name == "Retailers"
      return tax_for_peddlers(gross_sale) if gross_sale.business.business_classification_name == "Peddlers"

      return tax_for_businesses_essentially_consisting_of_sales_of_services_for_a_fee(gross_sale) if gross_sale.business.business_classification_name == "Business hereunder enumerated: Cafes, cafeterias, ice cream and other refreshment parlors, restaurants, soda fountain bars, carinderias or food caterers; Commission agents; Lessors, dealers, brokers of real estate; On travel agencies and travel agents; Boarding houses, motels, apartments, and condominiums; Subdivision owners/Private Cemeteries and Memorial Parks; Hospitals, medical/dental/therapeutic clinics, medical/dental laboratories; Operators of Cable Network System; Operators of computer services establishments; General consultancy services; All other similar activities consisting essentially of the sales of services for a fee." && (2_000_000..Float::INFINITY).include?(gross_sale.amount.to_f)
      return tax_for_banks_and_other_financial_institutions(gross_sale) if gross_sale.business.business_classification_name == "Banks and other financial institutions"
      return tax_for_contractors_and_other_independent_contractors(gross_sale) if gross_sale.business.business_classification_name == "Contractors and other independent contractors" && (2_000_000..Float::INFINITY).include?(gross_sale.amount.to_f)
      return all.select{|a| a.business_classification == gross_sale.business.business_classification && a.amount_range.include?(gross_sale.amount)}.first.try(:tax_amount)
    end

    def self.tax_for_manufacturers_assemblers_repackers_processors_brewers_distillers_rectifiers_and_compounders_of_liquors_distilled_spirits_and_wines_or_manufacturers_of_any_article_of_commerce_of_whatever_kind_in_nature_in_excess_of_6_500_000(gross_sale)
      tax = ((gross_sale.amount * 0.01) * 0.3750)
    end

    def self.tax_for_wholesalers_distributors_or_dealers_of_any_article_or_commerce_of_whatever_kind_or_nature_in_excess_of_2_000_000(gross_sale)
      tax = ((gross_sale.amount * 0.01) * 0.50)
    end

    def self.tax_for_contractors_and_other_independent_contractors(gross_sale)
      tax = ((gross_sale.amount * 0.01) * 0.69)
    end

    def self.tax_for_banks_and_other_financial_institutions(gross_sale)
      tax = ((gross_sale.amount * 0.01) * 0.50)
    end

    def self.tax_for_retailers(gross_sale)
      if gross_sale.amount <= 400_000.00
        tax = gross_sale.amount * 0.02
      else
        tax = (gross_sale.amount - 400_000) * 0.01 + (400_000 * 0.02)
      end
    end

    def self.tax_for_peddlers(gross_sale)
      tax = 55
    end

    def self.tax_for_businesses_essentially_consisting_of_sales_of_services_for_a_fee(gross_sale)
      tax = ((gross_sale.amount * 0.01) * 0.50)
    end

    def amount_range
      minimum_amount..maximum_amount
    end
  end
end
