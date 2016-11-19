module Businesses
  class BusinessClassificationsController < ApplicationController
    def edit
      @business = Business.find(params[:id])
    end
    def update
      @business = Business.find(params[:id])
      @business.update(business_params)
      if @business.save
        redirect_to @business, notice: "Business Classification updated successfully."
      else
        render :edit
      end
    end

    private
    def business_params
      params.require(:business).permit(:business_classification_id)
    end
  end
end
