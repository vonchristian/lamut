module Accounting
  class Account < ApplicationRecord
    has_paper_trail
    class_attribute :normal_credit_balance
    has_many :amounts
    has_many :credit_amounts, :extend => Accounting::AmountsExtension, class_name: "Accounting::CreditAmount"
    has_many :debit_amounts, :extend => Accounting::AmountsExtension, class_name: "Accounting::DebitAmount"
    has_many :credit_entries, :through => :credit_amounts, :source => :entry
    has_many :debit_entries, :through => :debit_amounts, :source => :entry
    has_many :entries, through: :amounts, source: :entry

    validates_presence_of :type
    validates :name, presence: true, uniqueness: true
    validates :account_code, presence: true, uniqueness: true

    def self.fines_accounts
      Accounting::Account.all.select{|a| Accounting::Account::FINES_ACCOUNTS.include? a.name }
    end

    def self.types
      %w(Asset Liability Equity Revenue Expense)
    end

     def balance(options={})
        if self.class == Account
          raise(NoMethodError, "undefined method 'balance'")
        else
          if self.normal_credit_balance ^ contra
            credits_balance(options) - debits_balance(options)
          else
            debits_balance(options) - credits_balance(options)
          end
        end
      end
    def credits_balance(options={})
      credit_amounts.balance(options)
    end


    def debits_balance(options={})
      debit_amounts.balance(options)
    end

    def self.balance(options={})
      if self.new.class == Accounting::Account
        raise(NoMethodError, "undefined method 'balance'")
      else
        accounts_balance = BigDecimal.new('0')
        accounts = self.all
        accounts.each do |account|
          if account.contra
            accounts_balance -= account.balance(options)
          else
            accounts_balance += account.balance(options)
          end
        end
        accounts_balance
      end
    end

    def self.trial_balance
      if self.new.class == Accounting::Account
        Accounting::Asset.balance - (Accounting::Liability.balance + Accounting::Equity.balance + Accounting::Revenue.balance - Accounting::Expense.balance)
      else
        raise(NoMethodError, "undefined method 'trial_balance'")
      end
    end
  end
end
