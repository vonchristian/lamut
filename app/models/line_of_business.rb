class LineOfBusiness < ApplicationRecord
  include PgSearch
  pg_search_scope :text_search, :against => [:name]

  has_one :mayors_permit_fee, as: :feeable, class_name: "Fees::MayorsPermitFee"

  validates :name, presence: true, uniqueness: true

  accepts_nested_attributes_for :mayors_permit_fee

  delegate :amount, to: :mayors_permit_fee, allow_nil: true, prefix: true

  def self.details
    all.pluck(:name).join(", ")
  end

  def name_and_fee
    "#{name} #{mayors_permit_fee_amount}"
  end
end
