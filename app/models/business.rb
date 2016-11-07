class Business < ApplicationRecord
  has_attached_file :logo, styles: { medium: "295x295>",
                                      thumb: "100x100#",
                                      small: "50x50#"},
                                      default_url: ":style/no_logo.png"

  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  belongs_to :taxpayer
  has_many :addresses, as: :addressable

  accepts_nested_attributes_for :addresses
  delegate :name, to: :taxpayer, prefix: true
  def current_address
    addresses.current.last.try(:address_details)
  end
end
