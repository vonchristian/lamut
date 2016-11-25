class Mayor < ApplicationRecord
  belongs_to :municipality
  def full_name
    "#{first_name} #{middle_name.first.capitalize}. #{last_name}"
  end
end
