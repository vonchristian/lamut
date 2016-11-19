module Settings
  class LineOfBusinessClassificationsController < ApplicationController
    before_action :set_line_of_business_classification, only: [:show, :edit, :update, :destroy]

    # GET /line_of_business_classifications
    # GET /line_of_business_classifications.json
    def index
      @line_of_business_classifications = LineOfBusinessClassification.all
    end

    # GET /line_of_business_classifications/1
    # GET /line_of_business_classifications/1.json
    def show
    end

    # GET /line_of_business_classifications/new
    def new
      @line_of_business_classification = LineOfBusinessClassification.new
    end

    # GET /line_of_business_classifications/1/edit
    def edit
    end

    # POST /line_of_business_classifications
    # POST /line_of_business_classifications.json
    def create
      @line_of_business_classification = LineOfBusinessClassification.new(line_of_business_classification_params)

      respond_to do |format|
        if @line_of_business_classification.save
          format.html { redirect_to settings_url, notice: 'Line of business classification was successfully created.' }
          format.json { render :show, status: :created, location: @line_of_business_classification }
        else
          format.html { render :new }
          format.json { render json: @line_of_business_classification.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /line_of_business_classifications/1
    # PATCH/PUT /line_of_business_classifications/1.json
    def update
      respond_to do |format|
        if @line_of_business_classification.update(line_of_business_classification_params)
          format.html { redirect_to @line_of_business_classification, notice: 'Line of business classification was successfully updated.' }
          format.json { render :show, status: :ok, location: @line_of_business_classification }
        else
          format.html { render :edit }
          format.json { render json: @line_of_business_classification.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /line_of_business_classifications/1
    # DELETE /line_of_business_classifications/1.json
    def destroy
      @line_of_business_classification.destroy
      respond_to do |format|
        format.html { redirect_to line_of_business_classifications_url, notice: 'Line of business classification was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_line_of_business_classification
        @line_of_business_classification = LineOfBusinessClassification.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def line_of_business_classification_params
        params.require(:line_of_business_classification).permit(:name)
      end
  end
end
