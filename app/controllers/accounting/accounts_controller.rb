module Accounting
  class AccountsController < ApplicationController
    before_action :set_account, only: [:show, :edit, :update, :destroy]
    before_action :set_type


    def index
        if params[:name].present?
          @accounts = type_class.search_by_name(params[:name]).page(params[:page]).per(100)
        else
          @accounts = type_class.all.order(:code).page(params[:page]).per(100)
        end

      end
    def show
    end

    def new
      @account = type_class.new
    end

    def edit
    end

    def create
      @account = Accounting::Account.create(account_params)
      if @account.save
        redirect_to accounting_accounts_url, notice: "Account created successfully."
      else
        render :new
      end 
    end

    def update
      @accounts = Accounting::Account.all
      @account = Accounting::Account.find(params[:id])
      @account.update_attributes(account_params)
    end

    def activate
      @account = Accounting::Account.find(params[:id])
      @account.active!
      redirect_to accounting_index_url
    end
    def deactivate
      @account = Accounting::Account.find(params[:id])
      @account.inactive!
      redirect_to accounting_index_url
    end


    def destroy
      @account.destroy
      redirect_to accounts_url
    end

    private

    def set_type
      @type = type
    end

    def type
      Accounting::Account.types.include?(params[:type]) ? params[:type] : "Accounting::Account"
    end

    def type_class
      type.constantize
    end

    def set_account
      @account = type_class.find(params[:id])
    end

    def account_params
      params.require(type.underscore.gsub('/', '_').to_sym).permit(:name, :type, :code)
    end

  end
end
