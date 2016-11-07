class CreateGrossSales < ActiveRecord::Migration[5.0]
  def change
    create_table :gross_sales do |t|
      t.decimal :amount
      t.date :calendar_year
      t.belongs_to :business, foreign_key: true

      t.timestamps
    end
  end
end
