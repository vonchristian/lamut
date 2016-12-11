class RemoveCodeFromAccounts < ActiveRecord::Migration[5.0]
  def change
    remove_column :accounts, :code, :string
  end
end
