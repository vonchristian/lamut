class GrossSale < ApplicationRecord
  MINIMUM_GROSS_SALE_AMOUNT = 30_000
  belongs_to :business
  belongs_to :business_tax

  validates :amount, presence: true, numericality: { greater_than: MINIMUM_GROSS_SALE_AMOUNT }
end
