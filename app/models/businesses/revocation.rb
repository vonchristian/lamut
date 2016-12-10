class Businesses::Revocation < ApplicationRecord
  belongs_to :business

  validates :violation, :revoked_at, presence: true
  before_save :set_revoked_at

  def revoked?
    business.revocation.present?
  end

  private
  def set_revoked_at
    self.revoked_at ||=Time.zone.now
  end
end
