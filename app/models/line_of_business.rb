class LineOfBusiness < ApplicationRecord
  belongs_to :business
  def self.details
    all.pluck(:name).join(" ")
  end
end
