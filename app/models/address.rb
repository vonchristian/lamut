class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  belongs_to :barangay
  belongs_to :municipality
  belongs_to :province
  def self.current
    all.where(current: true)
  end
  def address_details
    "#{house_number} #{unit_number} #{building_name} #{street}, #{barangay.try(:name)}, #{municipality.try(:name)}, #{province.try(:name)}"
  end
end
