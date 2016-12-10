class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  belongs_to :barangay, class_name: "Addresses::Barangay"
  belongs_to :municipality, class_name: "Addresses::Municipality"
  belongs_to :province, class_name: "Addresses::Province"

  def self.current
    all.where(current: true)
  end
  def address_details
    "#{house_number} #{unit_number} #{building_name} #{street}, #{barangay.try(:name)}, #{municipality.try(:name)}, #{province.try(:name)}"
  end
end
