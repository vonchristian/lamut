module Settings
  class RequiredDocumentsController < ApplicationController
    def index
      @required_documents = RequiredDocument.all
    end
    def new
      @required_document = RequiredDocument.new
    end
    def create
      @required_document = RequiredDocument.create(required_document_params)
      if @required_document.save
        redirect_to settings_required_documents_url, notice: "Required Document saved successfully."
      else
        render :new
      end
    end
    def edit
      @required_document = RequiredDocument.find(params[:id])
    end
    def update
      @required_document = RequiredDocument.find(params[:id])
      @required_document.update(required_document_params)
      if @required_document.save
        redirect_to settings_required_documents_url, notice: "Required Document updated successfully."
      else
        render :edit
      end
    end

    private
    def required_document_params
      params.require(:required_document).permit(:name, :default, :department_id)
    end
  end
end
