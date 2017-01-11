module Businesses
  module Assessments
    class FeeAssessment < ApplicationRecord
      belongs_to :business
      belongs_to :entry, class_name: "Accounting::Entry"
      belongs_to :assessor, class_name: "User", foreign_key: 'user_id'
    end
  end
end
