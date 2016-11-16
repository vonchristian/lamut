class ModeOfPaymentsController < ApplicationController
  before_action :set_mode_of_payment, only: [:show, :edit, :update, :destroy]

  # GET /mode_of_payments
  # GET /mode_of_payments.json
  def index
    @mode_of_payments = ModeOfPayment.all
  end

  # GET /mode_of_payments/1
  # GET /mode_of_payments/1.json
  def show
  end

  # GET /mode_of_payments/new
  def new
    @mode_of_payment = ModeOfPayment.new
  end

  # GET /mode_of_payments/1/edit
  def edit
  end

  # POST /mode_of_payments
  # POST /mode_of_payments.json
  def create
    @mode_of_payment = ModeOfPayment.new(mode_of_payment_params)

    respond_to do |format|
      if @mode_of_payment.save
        format.html { redirect_to @mode_of_payment, notice: 'Mode of payment was successfully created.' }
        format.json { render :show, status: :created, location: @mode_of_payment }
      else
        format.html { render :new }
        format.json { render json: @mode_of_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mode_of_payments/1
  # PATCH/PUT /mode_of_payments/1.json
  def update
    respond_to do |format|
      if @mode_of_payment.update(mode_of_payment_params)
        format.html { redirect_to @mode_of_payment, notice: 'Mode of payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @mode_of_payment }
      else
        format.html { render :edit }
        format.json { render json: @mode_of_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mode_of_payments/1
  # DELETE /mode_of_payments/1.json
  def destroy
    @mode_of_payment.destroy
    respond_to do |format|
      format.html { redirect_to mode_of_payments_url, notice: 'Mode of payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mode_of_payment
      @mode_of_payment = ModeOfPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mode_of_payment_params
      params.require(:mode_of_payment).permit(:name)
    end
end
