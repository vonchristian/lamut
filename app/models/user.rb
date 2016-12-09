class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [:collection_clerk, :bplo_officer, :sanitary_officer,  :municipal_engineer, :municipal_mayor, :mayors_staff, :fire_officer, :health_officer, :police_officer]

  belongs_to :department

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :photo, styles: { medium: "295x295>",
                                   thumb: "100x100#",
                                   small: "50x50#",
                                   x_small: "25x25#"},
                                   default_url: ":style/profile_default.jpg"

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  def first_name_and_last_name
    "#{first_name} #{last_name}"
  end

  def name
    first_name_and_last_name
  end
end
