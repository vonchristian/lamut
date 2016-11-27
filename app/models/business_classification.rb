class BusinessClassification < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  def retailer?
    self.name == "Retailer"
  end
end
