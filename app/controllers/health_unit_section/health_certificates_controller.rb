module HealthUnitSection
  class HealthCertificatesController < ApplicationController
    def index
      @health_certificates = HealthUnitSection::HealthCertificate.all
    end

    def new
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @health_certificate = @taxpayer.health_certificates.build
    end

    def create
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @health_certificate = @taxpayer.health_certificates.create(health_certificate_params)
      if @health_certificate.save
        redirect_to @taxpayer, notice: "Health Certificate Issued successfully."
      else
        render :new
      end
    end

    private

    def health_certificate_params
      params.require(:health_unit_health_certificate).permit(:date_issued, :expiry_date, :office_or_agency)
    end
  end
end
