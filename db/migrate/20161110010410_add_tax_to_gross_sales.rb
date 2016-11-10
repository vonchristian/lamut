class AddTaxToGrossSales < ActiveRecord::Migration[5.0]
  def change
    add_column :gross_sales, :tax, :decimal
  end
end
