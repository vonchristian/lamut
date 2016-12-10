class Department < ApplicationRecord
  has_many :documents, class_name: "RequiredDocument"

  validates :name, presence: true, uniqueness: true
end
