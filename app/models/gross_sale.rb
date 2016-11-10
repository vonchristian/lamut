class GrossSale < ApplicationRecord
  MINIMUM_GROSS_SALE_AMOUNT = 30_000
  belongs_to :business
  belongs_to :business_tax

  validates :amount, presence: true, numericality: { greater_than: MINIMUM_GROSS_SALE_AMOUNT }

  before_save :set_tax
  def self.with_unpaid_tax
    all.select{|a| a.tax_paid? == false }
  end
  def tax_paid?
    false
  end

  private
  def set_tax
    self.tax = BusinessTax.set_tax(self)
  end

end
