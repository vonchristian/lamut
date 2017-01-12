module RequiredDocuments
  class Issuance < ApplicationRecord
    belongs_to :recipient, polymorphic: true
    belongs_to :required_document

    validates :date_issued, :expiry_date, presence: true
    validates :reference_number, presence: true, uniqueness: true

  end
end
