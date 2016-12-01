class Requirement < ApplicationRecord
  belongs_to :business
  belongs_to :required_document

end
