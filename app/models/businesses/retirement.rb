module Businesses
  class Retirement < ApplicationRecord
    belongs_to :business

    def retired?
      business.retirement.present?
    end
  end
end
