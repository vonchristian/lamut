module Fees
  class MayorsPermitFee < Fee
    after_commit :set_name

    private
    def set_name
      self.name = self.feeable.try(:name)
      self.save
    end
  end
end
