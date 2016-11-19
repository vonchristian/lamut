module Businesses
  class LineOfBusinessesController < ApplicationController
    def destroy
      @business = Business.find(params[:business_id])
      @business_activity = BusinessActivity.find(params[:id])
      @business_activity.destroy
      redirect_to new_business_business_activity_path(@business), notice: "Business Activity Removed successfully."
    end
  end
end 
