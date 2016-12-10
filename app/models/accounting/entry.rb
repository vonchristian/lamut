module Accounting
  class Entry < ApplicationRecord
    include PublicActivity::Common
    include PgSearch

    scope :created_between, lambda {|start_date, end_date| where("date >= ? AND date <= ?", start_date, end_date )}
    pg_search_scope :text_search, :against => [:description, :reference_number]

    belongs_to :entriable, :polymorphic => true
    belongs_to :recorder, class_name: "User", foreign_key: "recorder_id"
    has_many :credit_amounts, :extend => Accounting::AmountsExtension, :class_name => 'Accounting::CreditAmount', :inverse_of => :entry, dependent: :destroy
    has_many :debit_amounts, :extend => Accounting::AmountsExtension, :class_name => 'Accounting::DebitAmount', :inverse_of => :entry, dependent: :destroy
    has_many :credit_accounts, :through => :credit_amounts, :source => :account, :class_name => 'Accounting::Account', dependent: :destroy
    has_many :debit_accounts, :through => :debit_amounts, :source => :account, :class_name => 'Accounting::Account', dependent: :destroy

    validates_presence_of :description
    validates :reference_number, uniqueness: true, presence: true
    validate :has_credit_amounts?
    validate :has_debit_amounts?
    validate :amounts_cancel?

    # Support constructiousing 'credits' and 'debits' keys
    accepts_nested_attributes_for :credit_amounts, :debit_amounts
    validates_associated :credit_amounts, :debit_amounts



    before_save :set_default_date
    def taxpayer
      if self.entriable_type == 'Business'
        self.entriable.owner.try(:name)
      elsif self.entriable_type == 'Taxpayer'
        self.entriable.try(:name)
      end
    end
    def self.revenue_for_current_year
      Accounting::Revenue.balance(from_date: Time.zone.now.beginning_of_year, to_date: Time.zone.now.end_of_year)
    end
    def recorded_by_user?
      current_user.id == self.recorder_id
    end

    def name
      description
    end

    def self.entered_on(hash={})
      if hash[:from_date] && hash[:to_date]
          from_date = hash[:from_date].kind_of?(Date) ? hash[:from_date] : DateTime.parse(hash[:from_date].strftime('%Y/%m/%d'))
          to_date = hash[:to_date].kind_of?(Date) ? hash[:to_date] : DateTime.parse(hash[:to_date].strftime('%Y/%m/%d'))
          Accounting::Entry.where('date' => from_date..to_date)
      else
        Accounting::Entry.all
      end
    end

    private
    def set_default_date
      self.date ||= Time.zone.now
    end

    def has_credit_amounts?
      errors[:base] << "Entry must have at least one credit amount" if self.credit_amounts.blank?
    end

    def has_debit_amounts?
      errors[:base] << "Entry must have at least one debit amount" if self.debit_amounts.blank?
    end

    def amounts_cancel?
      errors[:base] << "The credit and debit amounts are not equal" if credit_amounts.balance_for_new_record != debit_amounts.balance_for_new_record
    end

  end
end
