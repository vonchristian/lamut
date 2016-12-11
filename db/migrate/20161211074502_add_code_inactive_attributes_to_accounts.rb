class AddCodeInactiveAttributesToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :account_code, :integer
    add_column :accounts, :heap_code, :integer
  end
end
