module Addresses
  class Province < ApplicationRecord
    has_many :municipalities
    validates :name, presence: true, uniqueness: true
  end
end
