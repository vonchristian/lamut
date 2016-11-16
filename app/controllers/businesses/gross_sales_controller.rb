module Businesses
  class GrossSalesController < ApplicationController
    def new
      @business = Business.find(params[:business_id])
      @gross_sale = @business.gross_sales.build
    end
    def create
      @business = Business.find(params[:business_id])
      @gross_sale = @business.gross_sales.create(gross_sale_params)
      if @gross_sale.save
        redirect_to @business, notice: "Gross Sales saved successfully."
      else
        render :new
      end
    end

    private
    def gross_sale_params
      params.require(:gross_sale).permit(:amount, :calendar_year)
    end
  end
end 
