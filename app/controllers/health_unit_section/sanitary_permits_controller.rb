module HealthUnitSection
  class SanitaryPermitsController < ApplicationController
    def index
      @sanitary_permits = HealthUnitSection::SanitaryPermit.all
    end

    def new
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @sanitary_permit = @taxpayer.sanitary_permits.build
    end

    def create
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @sanitary_permit = @taxpayer.sanitary_permits.create(sanitary_permit_params)
      if @sanitary_permit.save
        redirect_to @taxpayer, notice: "Health Certificate Issued successfully."
      else
        render :new
      end
    end

    private

    def sanitary_permit_params
      params.require(:health_unit_sanitary_permit).permit(:date_issued, :expiry_date, :office_or_agency)
    end
  end
end
