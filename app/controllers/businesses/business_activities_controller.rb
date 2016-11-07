module Businesses
  class BusinessActivitiesController < ApplicationController
    def new
      @business = Business.find(params[:business_id])
      @business_activity = @business.business_activities.build
    end
    def create
      @business = Business.find(params[:business_id])
      @business_activity = @business.business_activities.create(business_activity_params)
      if @business_activity.save
        redirect_to @business, notice: "Line of Business added successfully."
      else
        render :new
      end
    end

    private
    def business_activity_params
      params.require(:business_activity).permit(:line_of_business_id)
    end
  end
end
