class Taxpayer < ApplicationRecord
  include PgSearch
  multisearchable :against => [:first_name, :middle_name, :last_name],
    :using => [:tsearch, :dmetaphone, :trigrams],
    :ignoring => :accents
  pg_search_scope :text_search, :against => [:first_name, :middle_name, :last_name]

  has_one :tin, class_name: "Taxpayers::Tin"
  has_many :addresses, as: :addressable
  has_many :businesses
  has_many :issued_documents, class_name: "RequiredDocuments::Issuance", as: :recipient
  has_many :health_certificates, through: :issued_documents, class_name: "HealthUnitSection::HealthCertificate"
  has_many :sanitary_permits, through: :issued_documents, class_name: "HealthUnitSection::SanitaryPermit"

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
