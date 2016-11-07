module Taxpayers
  class BusinessesController < ApplicationController
    def new
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @business = @taxpayer.businesses.build
      @business.addresses.build
    end
    def create
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @business = @taxpayer.businesses.create(business_params)
      if @business.save
        redirect_to @business, notice: "Business saved successfully."
      else
        render :new
      end
    end
    def business_params
      params.require(:business).permit(:name, :logo,
      addresses_attributes:[:street, :house_number, :building_name, :unit_number, :barangay, :municipality, :province, :current, :id])
    end
  end
end
