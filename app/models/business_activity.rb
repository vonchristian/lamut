class BusinessActivity < ApplicationRecord
  belongs_to :line_of_business
  belongs_to :business
  validates :line_of_business_id, uniqueness: {scope: :business, message: "Already taken"}
end
