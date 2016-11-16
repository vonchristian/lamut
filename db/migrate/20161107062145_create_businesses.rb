class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.boolean :has_tax_incentive
      t.boolean :franchise
      t.belongs_to :taxpayer, foreign_key: true

      t.timestamps
    end
  end
end
