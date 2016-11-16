class CreateTins < ActiveRecord::Migration[5.0]
  def change
    create_table :tins do |t|
      t.belongs_to :taxpayer, foreign_key: true
      t.string :number

      t.timestamps
    end
  end
end
