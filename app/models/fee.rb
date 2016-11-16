class Fee < ApplicationRecord
  belongs_to :feeable, polymorphic: true

  def self.total
    all.sum(:amount)
  end
end
