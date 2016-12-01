module Businesses
  class AdditionalRequirementsController < ApplicationController
    def new
      @business = Business.find(params[:business_id])
      @additional_requirement = @business.additional_requirements.build
    end
    def create
      @business = Business.find(params[:business_id])
      @additional_requirement = @business.additional_requirements.create(additional_requirement_params)
      if @additional_requirement.save
        redirect_to new_business_additional_requirement_path(@business), notice: "Additional Requirement created successfully."
      else
        render :new
      end
    end

    private
    def additional_requirement_params
      params.require(:additional_requirement).permit(:required_document_id)
    end
  end
end
