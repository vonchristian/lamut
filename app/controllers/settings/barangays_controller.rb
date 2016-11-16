module Settings
  class BarangaysController < ApplicationController
    def new
      @barangay = Barangay.new
    end
    def create
      @barangay = Barangay.create(barangay_params)
      if @barangay.save
        redirect_to settings_url, notice: "Barangay saved successfully."
      else
        render :new
      end
    end

    private
    def barangay_params
      params.require(:barangay).permit(:name, :municipality_id)
    end
  end
end 
