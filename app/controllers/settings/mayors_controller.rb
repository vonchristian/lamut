module Settings
  class MayorsController < ApplicationController
    def new
      @municipality = Municipality.find(params[:municipality_id])
      @mayor = @municipality.build_mayor
    end
    def create
      @municipality = Municipality.find(params[:municipality_id])
      @mayor = @municipality.create_mayor(mayor_params)
      if @mayor.save
        redirect_to settings_accounts_url, notice: "Mayor saved successfully."
      else
        render :new
      end
    end
    private
    def mayor_params
      params.require(:mayor).permit(:first_name, :middle_name, :last_name)
    end
  end
end 
