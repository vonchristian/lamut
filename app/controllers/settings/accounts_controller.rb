module Settings
  class AccountsController < ApplicationController
    def index
      @municipality = Municipality.last 
    end
  end
end
