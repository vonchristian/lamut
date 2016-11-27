module Settings
  class AccountsController < ApplicationController
    def index
      @municipality = Municipality.last
      @mode_of_payments = ModeOfPayment.all
    end
  end
end
