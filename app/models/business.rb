class Business < ApplicationRecord
  has_attached_file :logo, styles: { medium: "295x295>",
                                      thumb: "100x100#",
                                      small: "50x50#"},
                                      default_url: ":style/no_logo.png"

  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  has_one :retirement
  belongs_to :taxpayer
  has_many :addresses, as: :addressable
  has_many :business_activities
  has_many :line_of_businesses, through: :business_activities
  has_many :mayors_permit_fees, through: :line_of_businesses
  has_many :gross_sales

  accepts_nested_attributes_for :addresses, :business_activities
  delegate :name, to: :taxpayer, prefix: true
  delegate :retired?, to: :retirement
  def current_address
    addresses.current.last.try(:address_details)
  end
end
