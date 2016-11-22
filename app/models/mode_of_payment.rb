class ModeOfPayment < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :recurrence, numericality: { greater_than: 0.1 }
  def annually?
    name.downcase == "annually" && recurrence == 1
  end
  def semi_annually?
    name.downcase == "semi-annually" && recurrence == 2
  end

  def quarterly?
    name.downcase == "quarterly" && recurrence == 4
  end
end
