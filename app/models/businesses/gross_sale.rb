module Businesses
  class GrossSale < ApplicationRecord
    MINIMUM_GROSS_SALE_AMOUNT_FOR_RETAILERS = 30_000

    belongs_to :business

    validates :amount, presence: true, numericality: {greater_than: 0.1 }
    validates :calendar_year, presence: true
    validate :must_be_greater_than_minimum_gross_sale_amount_if_retailers, on: :create
    validate :once_a_year, on: :create

    before_save :set_tax

    delegate :retailer?, to: :business, prefix: true, allow_nil: true
    delegate :gross_sale_entered, to: :business, allow_nil: true

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
      errors.add(:calendar_year, "Can only be once a year") if self.gross_sale_entered(self.calendar_year.try(:year))
    end

    def must_be_greater_than_minimum_gross_sale_amount_if_retailers
      errors.add(:amount, "Must be greater than #{MINIMUM_GROSS_SALE_AMOUNT_FOR_RETAILERS}") if self.business_retailer? && self.amount < MINIMUM_GROSS_SALE_AMOUNT_FOR_RETAILERS
    end
  end
end
