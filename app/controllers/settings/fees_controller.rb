module Settings
  class FeesController < ApplicationController
    def index
      @fees = Fee.all
    end
    def new
      @fee = Fee.new
    end
    def create
      @fee = Fee.create(fee_params)
      if @fee.save
        redirect_to settings_fees_url, notice: "Fee created successfully."
      else
        render :new
      end
    end

    private
    def fee_params
      params.require(:fee).permit(:name, :amount, :default)
    end
  end
end
