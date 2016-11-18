class CreateTaxes < ActiveRecord::Migration[5.0]
  def change
    create_table :taxes do |t|
      t.integer :taxable_id
      t.string :taxable_type
      t.decimal :taxable_amount
      t.decimal :tax_rate
      t.decimal :tax_amount

      t.timestamps
    end
    add_index :taxes, :taxable_id
    add_index :taxes, :taxable_type
  end
end
