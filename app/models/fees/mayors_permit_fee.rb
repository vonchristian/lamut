module Fees
  class MayorsPermitFee < Fee
    before_commit :set_name

    private
    def set_name
      self.name = self.feeable.try(:name)
    end
  end
end
