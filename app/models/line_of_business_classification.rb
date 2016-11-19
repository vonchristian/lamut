class LineOfBusinessClassification < ApplicationRecord
  has_many :line_of_businesses

  validates :name, presence: true, uniqueness: true
end
