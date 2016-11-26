class Mayor < ApplicationRecord
  belongs_to :municipality
  has_attached_file :photo, styles: { medium: "295x295>",
                                   thumb: "100x100#",
                                   small: "50x50#",
                                   x_small: "25x25#"},
                                   default_url: ":style/profile_default.jpg"

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  def full_name
    "#{first_name} #{middle_name.first.capitalize}. #{last_name}"
  end
end
