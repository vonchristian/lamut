class BusinessesController < ApplicationController
  def index
    if params[:search].present?
      @businesses = Business.text_search(params[:search]).page(params[:page]).per(5)
    else
      @businesses = Business.all.order(name: :asc).page(params[:page]).per(5)
    end
  end
  def show
    @business = Business.find(params[:id])
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    @business.update(business_params)
    if @business.save
      redirect_to @business, notice: "Business information updated successfully."
    else
      render :edit
    end
  end

  def business_params
    params.require(:business).permit(:name, :logo, :business_classification_id, :mode_of_payment_id,
    :line_of_business_ids =>[],
    addresses_attributes:[:street, :house_number, :building_name, :unit_number, :barangay, :municipality, :province, :current, :id])
  end

end
