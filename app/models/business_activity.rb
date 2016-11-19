class BusinessActivity < ApplicationRecord
  belongs_to :line_of_business
  belongs_to :business

  validates :line_of_business_id, presence: true, uniqueness: {scope: :business, message: "Line of Business is already added"}

  delegate :name, to: :line_of_business, allow_nil: true, prefix: true
  delegate :mayors_permit_fee_amount, to: :line_of_business, allow_nil: true, prefix: true

end
