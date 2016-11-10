class CreateModeOfPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :mode_of_payments do |t|
      t.string :name
      t.integer :recurrence

      t.timestamps
    end
  end
end
