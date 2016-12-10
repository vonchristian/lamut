module Addresses
  class Municipality < ApplicationRecord
    has_one :mayor
    belongs_to :province
    has_many :barangays
    validates :name, presence: true, uniqueness: true
    has_attached_file :logo, styles: { medium: "295x295>",
                                        thumb: "100x100#",
                                        small: "50x50#"},
                                        default_url: ":style/no_logo.png"

    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
    delegate :full_name, to: :mayor, prefix: true, allow_nil: true
  end
end
