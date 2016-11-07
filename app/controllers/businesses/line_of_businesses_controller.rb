module Businesses
  class LineOfBusinessesController < ApplicationController
    def new
      @business = Business.find(params[:business_id])
      @line_of_business = @business.line_of_businesses.build
    end
    def create
      @business = Business.find(params[:business_id])
      @line_of_business = @business.line_of_businesses.create(line_of_business_params)
      if @line_of_business.save
        redirect_to @business, notice: "Line of Business added successfully."
      else
        render :new
      end
    end

    private
    def line_of_business_params
      params.require(:line_of_business).permit(:name)
    end
  end
end 
