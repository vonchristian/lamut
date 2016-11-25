module Settings
  class MunicipalitiesController < ApplicationController
    def edit
      @municipality = Municipality.find(params[:id])
    end
    def update
      @municipality = Municipality.find(params[:id])
      @municipality.update(municipality_params)
      if @municipality.save
        redirect_to settings_accounts_url, notice: "Information updated successfully."
      else
        render :edit
      end
    end

    private
    def municipality_params
      params.require(:municipality).permit(:name, :logo)
    end
  end
end 
