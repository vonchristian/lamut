class BusinessActivity < ApplicationRecord
  belongs_to :line_of_business
  belongs_to :business
end
