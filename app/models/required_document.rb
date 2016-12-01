class RequiredDocument < ApplicationRecord
  belongs_to :signatory
  belongs_to :department
  has_many :issuances

  delegate :name, to: :department, prefix: true, allow_nil: true

  def self.default
    all.where(default: true)
  end
  def self.not_default
    all.where(default: false )
  end
end
