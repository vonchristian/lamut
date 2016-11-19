class AddressesController < ApplicationController
  def edit
    @address = Address.find(params[:id])
  end
  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    if @address.save
      redirect_to @address.addressable, notice: "Address updated successfully."
    else
      render :edit
    end
  end

  private
  def address_params
    params.require(:address).permit(:street, :house_number, :building_name, :unit_number, :barangay_id, :municipality_id, :province_id, :current)
  end
end 
