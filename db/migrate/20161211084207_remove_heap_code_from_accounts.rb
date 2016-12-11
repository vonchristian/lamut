class RemoveHeapCodeFromAccounts < ActiveRecord::Migration[5.0]
  def change
    remove_column :accounts, :heap_code, :string
  end
end
