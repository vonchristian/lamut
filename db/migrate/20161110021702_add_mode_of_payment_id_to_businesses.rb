class AddModeOfPaymentIdToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :mode_of_payment_id, :integer
    add_index :businesses, :mode_of_payment_id
  end
end
