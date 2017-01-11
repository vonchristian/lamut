class Business < ApplicationRecord
  include PgSearch
  multisearchable :against => [:name]
  pg_search_scope :text_search, :against => :name
  has_attached_file :logo, styles: { medium: "295x295>",
                                      thumb: "100x100#",
                                      small: "50x50#"},
                                      default_url: ":style/no_logo.png"

  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  has_one :retirement, class_name: "Businesses::Retirement"
  has_one :revocation, class_name: "Businesses::Revocation"
  belongs_to :taxpayer
  belongs_to :business_classification, class_name: "Businesses::BusinessClassification"
  belongs_to :mode_of_payment
  has_many :addresses, as: :addressable
  has_many :business_activities, class_name: "Businesses::BusinessActivity"
  has_many :line_of_businesses, through: :business_activities
  has_many :mayors_permit_fees, through: :line_of_businesses
  has_many :gross_sales, class_name: "Businesses::GrossSale"
  has_many :business_requirements, class_name: "Businesses::BusinessRequirement"
  has_many :required_documents, through: :business_requirements
  has_many :fee_assessments, class_name: "Businesses::Assessments::FeeAssessment"


  accepts_nested_attributes_for :addresses, :business_activities

  delegate :name, to: :taxpayer, prefix: true
  delegate :name, to: :business_classification, prefix: true, allow_nil: true
  delegate :retailer?, to: :business_classification, allow_nil: true

  delegate :retired?, to: :retirement
  delegate :revoked?, to: :revocation
  delegate :annually?, :semi_annually?, :quarterly?, to: :mode_of_payment, allow_nil: true


  def current_address
    addresses.current.last.try(:address_details)
  end

  def total_taxes
  end
  def total_fees
    mayors_permit_fees.total
  end
  def police_clearance_fee
    50
  end
  def health_clearance_fee
    150
  end

  def gross_sale_entered(year)
    gross_sales.each.map{|a| a.calendar_year.year}.include?(year)
  end
  def business_requirement_addded_already?(business_requirement)
    business_requirements.pluck(:required_document_id).include?(business_requirement.id)
  end

end
