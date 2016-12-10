module Businesses
  class GrossSale < ApplicationRecord
    MINIMUM_GROSS_SALE_AMOUNT_FOR_RETAILERS = 30_000

    belongs_to :business
    belongs_to :business_tax

    validates :amount, presence: true
    validate :must_be_greater_than_minimum_gross_sale_amount_if_retailers
    validate :once_a_year

    before_save :set_tax

    def self.with_unpaid_tax
      all.select{|a| a.tax_paid? == false }
    end
    def self.for_prev_year
      all.select{ |a| a.calendar_year.year == Time.zone.now.prev_year.year }.last
    end
    def tax_paid?
      false
    end

    private
    def set_tax
      self.tax = Taxes::BusinessTax.set_tax(self)
    end

    def once_a_year
      errors.add(:calendar_year, "Can only be once a year") if self.business.gross_sale_entered(self.calendar_year.year)
    end

    def must_be_greater_than_minimum_gross_sale_amount_if_retailers
      errors.add(:calendar_year, "Must be greater than #{MINIMUM_GROSS_SALE_AMOUNT_FOR_RETAILERS}") if self.business.retailer? && self.amount < MINIMUM_GROSS_SALE_AMOUNT_FOR_RETAILERS
    end
  end
end
