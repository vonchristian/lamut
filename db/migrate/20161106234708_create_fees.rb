class CreateFees < ActiveRecord::Migration[5.0]
  def change
    create_table :fees do |t|
      t.string :type
      t.string :name
      t.decimal :amount

      t.timestamps
    end
  end
end
