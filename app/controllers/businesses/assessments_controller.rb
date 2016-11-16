module Businesses
  class AssessmentsController < ApplicationController
    def new
      @business = Business.find(params[:business_id])
      @entry = Accounting::Entry.new
      @entry.debit_amounts.build
      @entry.credit_amounts.build
    end

    def create
      @entries = Accounting::Entry.all
      @entry = Accounting::Entry.create(entry_params)
      @entry.recorder = current_user
      authorize @entry
    end

    private
    def entry_params
      params.require(:accounting_entry).permit(:date, :description, :reference_number, debit_amounts_attributes:[:amount, :account], credit_amounts_attributes:[:amount, :account])
    end
  end
end
