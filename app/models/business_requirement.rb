class BusinessRequirement < ApplicationRecord
  belongs_to :required_document
  belongs_to :business
  delegate :name, :department_name, to: :required_document, prefix: true, allow_nil: true
  def self.set_default_requirements(business)
    RequiredDocument.default.each do |document|
      BusinessRequirement.create! required_document: document, business: business
    end
  end
end
