module Businesses
  class RetirementsController < ApplicationController
    def new
      @business = Business.find(params[:business_id])
      @retirement = @business.build_retirement
    end
    def create
      @business = Business.find(params[:business_id])
      @retirement = @business.create_retirement(retirement_params)
      if @retirement.save
        redirect_to @business, alert: "Business successfully retired!"
      else
        render :new
      end
    end

    private
    def retirement_params
      params.require(:retirement).permit(:retirement_date, :remarks)
    end
  end
end
