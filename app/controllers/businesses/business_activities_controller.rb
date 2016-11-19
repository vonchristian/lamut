module Businesses
  class BusinessActivitiesController < ApplicationController
    def new
      @business = Business.find(params[:business_id])
    end
    def create
      @business = Business.find(params[:business_id])
      @business_activity = @business.business_activities.create(business_activity_params)
      if @business_activity.save
        redirect_to new_business_business_activity_path(@business), notice: "Line of Business added successfully."
      else
        render :new
      end
    end

    def destroy
      @business_activity = BusinessActivity.find(params[:id])
      @business = @business_activity.business
      @business_activity.destroy
      redirect_to new_business_business_activity_path(@business), notice: "Business Activity removed successfully."
    end

    private
    def business_activity_params
      params.require(:business_activity).permit(:line_of_business_id)
    end
  end
end
