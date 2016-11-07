class TaxpayersController < ApplicationController
  before_action :set_taxpayer, only: [:show, :edit, :update, :destroy]

  # GET /taxpayers
  # GET /taxpayers.json
  def index
    @taxpayers = Taxpayer.all
  end

  # GET /taxpayers/1
  # GET /taxpayers/1.json
  def show
  end

  # GET /taxpayers/new
  def new
    @taxpayer = Taxpayer.new
    @taxpayer.addresses.build
  end

  # GET /taxpayers/1/edit
  def edit
  end

  # POST /taxpayers
  # POST /taxpayers.json
  def create
    @taxpayer = Taxpayer.new(taxpayer_params)

    respond_to do |format|
      if @taxpayer.save
        format.html { redirect_to @taxpayer, notice: 'Taxpayer was successfully created.' }
        format.json { render :show, status: :created, location: @taxpayer }
      else
        format.html { render :new }
        format.json { render json: @taxpayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxpayers/1
  # PATCH/PUT /taxpayers/1.json
  def update
    respond_to do |format|
      if @taxpayer.update(taxpayer_params)
        format.html { redirect_to @taxpayer, notice: 'Taxpayer was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxpayer }
      else
        format.html { render :edit }
        format.json { render json: @taxpayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxpayers/1
  # DELETE /taxpayers/1.json
  def destroy
    @taxpayer.destroy
    respond_to do |format|
      format.html { redirect_to taxpayers_url, notice: 'Taxpayer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxpayer
      @taxpayer = Taxpayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxpayer_params
      params.require(:taxpayer).permit(:photo, :first_name, :middle_name, :last_name, :mobile_number, :email, :date_of_birth, :sex, :civil_status,
       addresses_attributes:[:street, :house_number, :building_name, :unit_number, :barangay_id, :municipality_id, :province_id, :current, :id])
    end
end
