module Taxpayers
  class TinsController < ApplicationController
    def new
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @tin = @taxpayer.build_tin
    end
    def create
      @taxpayer = Taxpayer.find(params[:taxpayer_id])
      @tin = @taxpayer.create_tin(tin_params)
      if @tin.save
        redirect_to @taxpayer, notice: "TIN saved successfully."
      else
        render :new
      end
    end

    private
    def tin_params
      params.require(:tin).permit(:number)
    end
  end
end 
