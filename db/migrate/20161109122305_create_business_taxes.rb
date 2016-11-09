class CreateBusinessTaxes < ActiveRecord::Migration[5.0]
  def change
    create_table :business_taxes do |t|
      t.decimal :minimum_amount
      t.decimal :maximum_amount
      t.decimal :tax_amount
      t.integer :business_classification_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
