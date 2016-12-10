module RequiredDocuments
  class Issuance < ApplicationRecord
    belongs_to :required_document
  end
end
