module Addresses
  class Barangay < ApplicationRecord
    belongs_to :municipality

    validates :name, presence: true, uniqueness: true
  end
end
