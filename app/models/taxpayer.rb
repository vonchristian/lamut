class Taxpayer < ApplicationRecord
  include PgSearch
  multisearchable :against => [:first_name, :middle_name, :last_name]
  has_one :tin
  has_many :addresses, as: :addressable
  has_many :businesses
  has_attached_file :photo, styles: { medium: "295x295>",
                                      thumb: "100x100#",
                                      small: "50x50#"},
                                      default_url: ":style/profile_default.jpg"

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  enum sex:[:male, :female]
  enum civil_status: [:single, :married, :widower, :annulled]
  accepts_nested_attributes_for :addresses
  delegate :number, to: :tin, allow_nil: true, prefix: true
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def first_name_and_last_name
    "#{first_name} #{last_name}"
  end

  def name
    first_name_and_last_name
  end

  def current_address
    addresses.current.last.try(:address_details)
  end
end
