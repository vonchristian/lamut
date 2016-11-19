class GrossSale < ApplicationRecord
  MINIMUM_GROSS_SALE_AMOUNT = 30_000
  belongs_to :business
  belongs_to :business_tax

  validates :amount, presence: true, numericality: { greater_than: MINIMUM_GROSS_SALE_AMOUNT }
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

end
