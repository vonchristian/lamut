module Settings
  class BusinessClassificationsController < ApplicationController
    def new
      @business_classification = BusinessClassification.new
    end

    def create
      @business_classification = BusinessClassification.create(business_classification_params)
      if @business_classification.save
        redirect_to settings_url, notice: "Business Classification saved successfully."
      else
        render :new
      end
    end

    def edit
      @business_classification = BusinessClassification.find(params[:id])
    end
    def update
      @business_classification = BusinessClassification.find(params[:id])
      @business_classification.update(business_classification_params)
      if @business_classification.save
        redirect_to settings_url, notice: "Business Classification updated successfully."
      else
        render :edit
      end
    end 
    private
    def business_classification_params
      params.require(:business_classification).permit(:name)
    end
  end
end
