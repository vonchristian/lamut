module Taxpayers
  class Tin < ApplicationRecord
    belongs_to :taxpayer
    validates :number, presence: true, uniqueness: true
  end
end
