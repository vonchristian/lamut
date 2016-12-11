class AddAggregateAccountCodeToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :aggregate_account_code, :integer
    add_index :accounts, :aggregate_account_code
  end
end
