module Settings
  class LineOfBusinessesController < ApplicationController
    def new
      @line_of_business = LineOfBusiness.new
      @line_of_business.build_mayors_permit_fee
    end
    
    def create
      @line_of_business = LineOfBusiness.create(line_of_business_params)
      if @line_of_business.save
        redirect_to settings_url, notice: "Line Of Business saved successfully."
      else
        render :new
      end
    end

    def edit
      @line_of_business = LineOfBusiness.find(params[:id])
    end

    def update
      @line_of_business = LineOfBusiness.find(params[:id])
      @line_of_business.update(line_of_business_params)
      if @line_of_business.save
        redirect_to settings_line_of_businesses_url, notice: "Line of Business updated successfully."
      else
        render :edit
      end
    end

    def line_of_business_params
      params.require(:line_of_business).permit(:name, :line_of_business_classification_id, mayors_permit_fee_attributes: [:amount])
    end
  end
end
