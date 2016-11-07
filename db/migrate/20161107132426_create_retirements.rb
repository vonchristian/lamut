class CreateRetirements < ActiveRecord::Migration[5.0]
  def change
    create_table :retirements do |t|
      t.belongs_to :business, foreign_key: true
      t.text :remarks
      t.datetime :retirement_date

      t.timestamps
    end
  end
end
