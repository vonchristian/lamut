class CollectionsController < ApplicationController
    autocomplete :collection, :reference_number, full: true
  def index
    @collections = Accounting::Entry.all.page(params[:page]).per(100)
  end
  def new
    @entry = Accounting::Entry.new
    @entry.debit_amounts.build
    @entry.credit_amounts.build
  end

  def create
    @entry = Accounting::Entry.create(entry_params)
    @entry.recorder = current_user
    if @entry.save
      redirect_to collections_path, notice: "Collection saved successfully."
    else
      render :new
    end
  end

  def show
    @entry = Accounting::Entry.find(params[:id])
  end
  # def scope_to_date
  #   @entries = Accounting::Entry.created_between(params[:from_date], params[:to_date])
  #   @from_date = params[:from_date] ? Time.parse(params[:from_date]) : Time.now.beginning_of_day
  #   @to_date = params[:to_date] ? Time.parse(params[:to_date]) : Time.now.end_of_day
  #   respond_to do |format|
  #     format.html
  #     format.pdf do
  #       pdf = EntriesPdf.new(@entries, @from_date, @to_date, view_context)
  #         send_data pdf.render, type: "application/pdf", disposition: 'inline', file_name: "Entries Report.pdf"
  #     end
  #   end
  # end

  private
  def entry_params
    params.require(:accounting_entry).permit(:date, :description, :reference_number, :entriable_type, :entriable_id, debit_amounts_attributes:[:amount, :account], credit_amounts_attributes:[:amount, :account])
  end
end
